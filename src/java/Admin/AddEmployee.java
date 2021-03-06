
package Admin;

import connection.DbConnect;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class AddEmployee extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String Ename=request.getParameter("Empname");
            String Eid=request.getParameter("Eid");
            String pass=request.getParameter("pass");
            String bLocation=request.getParameter("location");
            
            
            Connection con=DbConnect.getDbConnection();
            PreparedStatement ps=con.prepareStatement("insert into employeedata values(?,?,?,?)");
            
            ps.setString(1,Ename);
            ps.setString(2,Eid);
            ps.setString(3,pass);
            ps.setString(4,bLocation);
            
            
            int rs=ps.executeUpdate();
            if(rs>0){
                HttpSession session=request.getSession();
                session.setAttribute("Ename",Ename);
                session.setAttribute("Eid",Eid);
                session.setAttribute("loc",bLocation);
                RequestDispatcher rd=request.getRequestDispatcher("Admin/employeeProfile.jsp");
                rd.forward(request, response);
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
