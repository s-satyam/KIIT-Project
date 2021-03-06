<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="connection.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link rel="stylesheet" href="/TeamPresence/css/loginForm.css">
        <link rel="stylesheet" href="/TeamPresence/css/bootstrap.min.css">
		<!-- <link rel="stylesheet" href="css/ionicons.min.css"> -->
	<link rel="stylesheet" href="/TeamPresence/css/font-awesome.min.css">
	<link rel="stylesheet" href="/TeamPresence/css/owl.carousel.css">
	<link rel="stylesheet" href="/TeamPresence/css/owl.theme.css">
	<link rel="stylesheet" href="/TeamPresence/css/owl.transitions.css">
	<link rel="stylesheet" href="/TeamPresence/css/animate.css">
	<link rel="stylesheet" href="/TeamPresence/js/nivo-lightbox/nivo-lightbox.css">
        <link rel="stylesheet" href="/TeamPresence/js/nivo-lightbox/nivo-lightbox-theme.css">
	<link rel="stylesheet" href="/TeamPresence/css/custom.css">

	    <!-- js -->
	<script src="/TeamPresence/js/jquery.min.js"></script>
	<script src="/TeamPresence/js/bootstrap.min.js"></script>
	<script src="/TeamPresence/js/owl.carousel.min.js"></script>
        <script src="/TeamPresence/js/wow.min.js"></script>
	<script src="/TeamPresence/js/jquery.actual.min.js"></script>
        
    </head>
    <body>
        
        <div id="preloader"></div>
        <div id="wrapper">
            <div id="overlay-1">
                <section id="navigation-scroll">
                    <nav class="navbar navbar-default navbar-fixed-top">
			<div class="container">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-example">
                                    <span class="sr-only">Toggle navigation</span>
                                    <i class="fa fa-bars"></i>
                                </button>
                                <a class="navbar-brand" href="index.htm">TeamPresence</a>
                            </div>
                            <div class="collapse navbar-collapse" id="navbar-example"></div>
                        </div>
                    </nav>	
		</section>	
				
		<section id="starting">
                    <div class="text-center starting-text wow animated zoomInDown">
			
                        <%
                            String name=request.getParameter("name");
                            String id=null;
                            if(name!=null){
                                id= request.getParameter("id");
                        %>
                                <h2><%=request.getParameter("name")%></h2>
                                <h2>Team Id: <%=request.getParameter("id")%></h2>
                        <%           
                            }
                            else{
                                id= String.valueOf(session.getAttribute("Tiid"));
                        %>
                                <h2>Welcome </h2>
                                <h2><%= session.getAttribute("Tname") %></h2>
                                <h2>Team Id: <%=session.getAttribute("Tiid") %></h2>
                        <%
                            }
                        %>						
                    </div>
		</section>
		<div id="bottom" class="bottom text-center">
                        <a href="#about"><i class="ion-ios7-arrow-down"></i></a>
                </div>
            </div>
	</div>
        
                
                <%
                    Connection con=DbConnect.getDbConnection();
                    PreparedStatement ps=con.prepareStatement("Select EmpId from empinteam where Tid=?");
                    ps.setString(1,id);
                    ResultSet rs=ps.executeQuery();
                %>
                
        <section id="price_table">
	    <div class="container">
	    	<div class="row main_content">
                    <ul class="price-table-chart">
                        <li class="text-center">
		            <span class="big">Employees</span>
                            <hr class="full">
                            <%
                                while(rs.next()){
                                    String Eiid=rs.getString("EmpId");
                                    PreparedStatement ps1=con.prepareStatement("Select Empname,bLocation from employeedata where EmpId=?");
                                    ps1.setString(1,Eiid);
                                    ResultSet rs1=ps1.executeQuery();
                                    while(rs1.next()){
                            %>                                                                                                                        
                                    <a href= <%= "\"/TeamPresence/Admin/employeeProfile.jsp?bLoc="+rs1.getString("bLocation")+" &Eid="+rs.getString("EmpId")+" &name="+rs1.getString("Empname")+"\""%> ><span class="price_table-description"><i class="fa fa-check"></i><%= rs.getString("EmpId")%></span> </a>                                        
                            <% } }%>                                        
		        </li>               	                
		    </ul>
                </div>	
	    </div>	
	</section>



        <script src="/TeamPresence/js/jquery-ui-1.10.3.min.js"></script>
        <script src="/TeamPresence/js/jquery.knob.js"></script>
        <script src="/TeamPresence/js/daterangepicker.js"></script>
        <script src="/TeamPresence/js/bootstrap3-wysihtml5.all.min.js"></script>
        <script src="/TeamPresence/js/smoothscroll.js"></script>
        <script src="/TeamPresence/js/nivo-lightbox/nivo-lightbox.min.js"></script>
        <script src="/TeamPresence/js/script.js"></script>


    </body>
</html>
