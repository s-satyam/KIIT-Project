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

public class AddTeam extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String name=request.getParameter("team");
            String id=request.getParameter("id");
            String Mid=request.getParameter("Mid");
            
            String Empid[]=request.getParameterValues("empId");
            
                
            Connection con=DbConnect.getDbConnection();
            PreparedStatement ps=con.prepareStatement("insert into Teamdata values(?,?,?)");
            PreparedStatement ps1=con.prepareStatement("insert into empInTeam values(?,?)");
            ps.setString(1, id);
            ps.setString(2, name);
            ps.setString(3, Mid);
            
            int rs1=0;
            for(String s:Empid){
                ps1.setString(1,id);
                ps1.setString(2,s);
                rs1=ps1.executeUpdate();
            }
            
            
            int rs=ps.executeUpdate();
            if(rs>0 && rs1>0){
                HttpSession session=request.getSession();
                session.setAttribute("Tname",name);
                session.setAttribute("Mid",Mid);
                session.setAttribute("Tiid",id);
                RequestDispatcher rd=request.getRequestDispatcher("Admin/teamProfile.jsp");
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
