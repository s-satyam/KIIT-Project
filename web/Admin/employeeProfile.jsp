<%@page import="java.util.HashMap"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connection.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="/TeamPresence/css/empProfileCss.css"> 
        <link rel="stylesheet" href="/TeamPresence/css/empProfileCsss.css">
        <style>
            .locbutton{
                margin-left: 90px;
                padding-left: 5px;
                margin-top: 50px;
            }
            .buttonn {

                border: none;
                color: white;
                padding: 15px 12px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
                -webkit-transition-duration: 0.4s; /* Safari */
                transition-duration: 0.4s;
            }

            .buttonn1:hover {
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
            }
        </style>
    </head>
    
    <body>
       
<div class="container">
    <div class="row profile">
		<div class="col-md-3">
			<div class="profile-sidebar">
				
				<div class="profile-userpic">
					<img src="/TeamPresence/img/img_avatar2.png" class="img-responsive" alt="" style="width: 150px;height: 150px; padding-left: 10px">
				</div>
				<div class="profile-usertitle">
					<div class="profile-usertitle-name">
                                            <%     
                                                String name=request.getParameter("name");
                                                if(name!=null){               
                                            %>
                                                <%=request.getParameter("name")%><span class="fa fa-envelope small pull-right"> </span>
                                        </div>
					<div class="profile-usertitle-job">
						Wipro Employee
					</div>
				</div>
				
                                <%
                                    String Eid=request.getParameter("Eid");

                                    HashMap <String,String> colorr=new HashMap();
                                    colorr.put("bangalore","#00CCFF");
                                    colorr.put("hydrabad","#F7DC6F");
                                    colorr.put("pune","#BB8FCE");
                                    colorr.put("mumbai","#239B56");
                                    colorr.put("kolkata","#DC7633");
                                    colorr.put("noida","#85C1E9");

                                    String loc=request.getParameter("bLoc");
                                    String a=loc;
                                    String l=colorr.get(a);
//                                        out.print(loc);
//                                        out.print(a);
//                                        out.print(l);


                                    Connection con = DbConnect.getDbConnection();
                                    PreparedStatement ps = con.prepareStatement("select Tid from empinteam where EmpId=?");
                                    ps.setString(1,Eid);
                                    ResultSet rs=ps.executeQuery();

                                    if(rs.next()){
                                            String tid=rs.getString("Tid");
                                        %>
                                        <div class="profile-usermenu">
					<ul class="nav">						
						<li>
							<a href="#">
							<i class="glyphicon glyphicon-user"></i>
							Team Id: <%= rs.getString("Tid") %> </a>
						</li>                                       
                                <%                                                                 
                                    PreparedStatement ps1= con.prepareStatement("select Mid from teamdata where Tid=?");
                                    ps1.setString(1,tid);
                                    ResultSet rs2=ps1.executeQuery();
                                    if(rs2.next()){
                                        %>
                                        <li>
                                            <a href="#">
                                            <i class="glyphicon glyphicon-user"></i>
                                            Manager Id: <%= rs2.getString("Mid") %></a>
					</li>						
                                    </ul>
				</div>
                                       
                                <%
                                    }
                                    }
                                %>                                						
						
                                 <div id="scoped-content">
                                    <style type="text/css" scoped>
                                        body
                                    {
                                     font-family:Verdana, Arial, Helvetica, sans-serif
                                    }

                                    table td {
                                        width:50px;
                                        height:50px;
                                        text-align:center;
                                        vertical-align:middle;
                                        background-color: <%= colorr.get(loc) %>;
                                      }

                                      table td.highlighted {
                                        background-color: #ABB2B9;
                                      }
                                    </style>    
                                </div>   
                            
                        <% }
                            else{
                                String Eid=String.valueOf(session.getAttribute("Eid"));
                                String loc=String.valueOf(session.getAttribute("loc"));
                                HashMap <String,String> colorr=new HashMap();
                                    colorr.put("bangalore","#00CCFF");
                                    colorr.put("hydrabad","#F7DC6F");
                                    colorr.put("pune","#BB8FCE");
                                    colorr.put("mumbai","#239B56");
                                    colorr.put("kolkata","#DC7633");
                                    colorr.put("noida","#85C1E9");
                                    
                                    Connection con = DbConnect.getDbConnection();
                                    PreparedStatement ps = con.prepareStatement("select Tid from empinteam where EmpId=?");
                                    PreparedStatement ps1 = con.prepareStatement("select Empname,bLocation from employeedata where EmpId=?");
                                    ps.setString(1,Eid);
                                    ps1.setString(1,Eid);
                                    ResultSet rs=ps.executeQuery();
                                    ResultSet rs1=ps1.executeQuery();
                                    String loc2=null ;
                                    
                                    while(rs1.next()){ 
                                             loc2=rs1.getString("bLocation");                                         
                        %>          
                                    <%=rs1.getString("Empname")%><span class="fa fa-envelope small pull-right"> </span>
                                    <% }%>
                                    <%if(loc2==null){%>
                                    <%=session.getAttribute("Ename")%><span class="fa fa-envelope small pull-right"> </span>
                                    <%}%>
                                    </div>
					<div class="profile-usertitle-job">
						Wipro Employee
					</div>
				</div>
                                <%
                                    
                                    
                                    
                                    if(rs.next()){
                                %>
                                <div class="profile-usermenu">
					<ul class="nav">						
						<li>
							<a href="#">
							<i class="glyphicon glyphicon-user"></i>
							Team Id: <%= rs.getString("Tid") %> </a>
						</li>
                                <%
                                    String Tid=rs.getString("Tid");
                                    PreparedStatement ps2= con.prepareStatement("select  Mid from teamdata where Tid=?");
                                    ps2.setString(1,Tid);
                                    ResultSet rs2=ps2.executeQuery();
                                    if(rs2.next()){
                                        %>
                                        <li>
                                            <a href="#">
                                            <i class="glyphicon glyphicon-user"></i>
                                            Manager Id: <%= rs2.getString("Mid") %></a>
					</li>						
                                    </ul>
				</div>
                                       
                                <%
                                    }
                                    }
                                %> 
                                 <div id="scoped-content">
                                    <style type="text/css" scoped>
                                        body
                                    {
                                     font-family:Verdana, Arial, Helvetica, sans-serif
                                    }

                                    table td {
                                        width:50px;
                                        height:50px;
                                        text-align:center;
                                        vertical-align:middle;
                                        <% if (loc!=null){%>
                                        background-color: <%= colorr.get(loc) %> ;
                                        <%} else{%>
                                        background-color: <%= colorr.get(loc2) %> ;
                                        <%}%>
                                      }

                                      table td.highlighted {
                                        background-color: #ABB2B9;
                                      }
                                    </style>    
                                </div>
                        <%        
                            }
                        %>        
                        
                    </div>
		</div>
                        
<div class="col-md-9">
    <div class="profile-content">
	<table cellpadding="0" cellspacing="1" id="our_table" align="center">
            <tr>
              <td>1</td>
              <td>2</td>
              <td>3</td>
              <td>4</td>
              <td>5</td>
            </tr>
            <tr>
              <td>6</td>
              <td>7</td>
              <td>8</td>
              <td>9</td>
              <td>10</td>
            </tr>
            <tr>
              <td>11</td>
              <td>12</td>
              <td>13</td>
              <td>14</td>
              <td>15</td>
            </tr>
            <tr>
              <td>16</td>
              <td>17</td>
              <td>18</td>
              <td>19</td>
              <td>20</td>
            </tr>
            <tr>
                <td>21</td>
                <td>22</td>
                <td>23</td>
                <td>24</td>
                <td>25</td>
            </tr>
            <tr>
                <td>26</td>
                <td>27</td>
                <td>28</td>
                <td>29</td>
                <td>30</td>
                <td>31</td>
            </tr>
            </table>

            <div class="locbutton">
                <button class="buttonn buttonn1" onclick="button_click('#00CCFF');" style="background-color: #00CCFF">bangalore</button>
                <button class="buttonn buttonn1" onclick="button_click('#F7DC6F');" style="background-color: #F7DC6F">hydrabad</button>
                <button class="buttonn buttonn1" onclick="button_click('#DC7633');" style="background-color: #DC7633">kolkata</button>
                <button class="buttonn buttonn1" onclick="button_click('#239B56');" style="background-color: #239B56">mumbai</button>
                <button class="buttonn buttonn1" onclick="button_click('#85C1E9');" style="background-color: #85C1E9">noida</button>
                <button class="buttonn buttonn1" onclick="button_click('#BB8FCE');" style="background-color: #BB8FCE">pune</button>
            </div>
            </div>
	</div>
    </div>
</div>
<br>
<br>
    
    
    <script type="text/javascript" charset="utf-8">
        function button_click(color){
            document.getElements("td").style.backgroundColor=color;
    }
    </script>

    
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" charset="utf-8">
    $(function () {
      var isMouseDown = false;
      $("#our_table td")
        .mousedown(function () {
          isMouseDown = true;
          $(this).toggleClass("highlighted");
          return false; // prevent text selection
        })
        .mouseover(function () {
          if (isMouseDown) {
            $(this).toggleClass("highlighted");
          }
        })
        .bind("selectstart", function () {
          return false; // prevent text selection in IE
        });

      $(document)
        .mouseup(function () {
          isMouseDown = false;
        });
    });
  </script>
  
  
    </body>
</html>