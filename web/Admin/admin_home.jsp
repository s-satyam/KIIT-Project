<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="connection.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN</title>
        

		<!-- meta -->
        <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	    <!-- css -->
        <link rel="stylesheet" href="css/loginForm.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
		<!-- <link rel="stylesheet" href="css/ionicons.min.css"> -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/owl.theme.css">
	<link rel="stylesheet" href="css/owl.transitions.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="js/nivo-lightbox/nivo-lightbox.css">
        <link rel="stylesheet" href="js/nivo-lightbox/nivo-lightbox-theme.css">
	<link rel="stylesheet" href="css/custom.css">

	    <!-- js -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
        <script src="js/wow.min.js"></script>
	<script src="js/jquery.actual.min.js"></script>

    </head>
    <body>
        <div id="preloader"></div>

		<div id="wrapper">
			<div id="overlay-1">
				<section id="navigation-scroll">
					<nav class="navbar navbar-default navbar-fixed-top">
					  <div class="container">
					    <!-- Brand and toggle get grouped for better mobile display -->
					    <div class="navbar-header">
					      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-example">
					        <span class="sr-only">Toggle navigation</span>
					        <i class="fa fa-bars"></i>
					      </button>
					      <a class="navbar-brand" href="index.htm">TeamPresence</a>
					    </div>

					    <!-- Collect the nav links, forms, and other content for toggling -->
					    <div class="collapse navbar-collapse" id="navbar-example">

					  </div><!-- /.container-fluid -->
					</nav>	<!-- navbar -->
				</section>	<!-- #navigation -->
				

				<section id="starting">
					<div class="text-center starting-text wow animated zoomInDown">
						<h2>Welcome </h2>
						<h1 class="rene"><%= session.getAttribute("id") %></h1>
						<button onclick="document.getElementById('id01').style.display='block'" class="bttn apple-store btn btn-lg" style="width:200px;">
                                                    <img src="img/play.png" alt="play">
							<p>Add </p>
							<h6>TEAM</h6>
                                                </button>
                                                
                                                <button onclick="document.getElementById('id02').style.display='block'" class="bttn apple-store btn btn-lg" style="width:200px;">
                                                    <img src="img/play.png" alt="play">
							<p>Add </p>
							<h6>MANAGER</h6>
                                                </button>
                                                
                                                <button onclick="document.getElementById('id03').style.display='block'" class="bttn apple-store btn btn-lg" style="width:200px;">
                                                    <img src="img/play.png" alt="play">
							<p>Add </p>
							<h6>EMPLOYEE</h6>
                                                </button>
					</div>
				</section>
				<div id="bottom" class="bottom text-center">
			        <a href="#about"><i class="ion-ios7-arrow-down"></i></a>
			    </div>
			</div><!-- overlay-1 -->
		</div>	<!-- wrapper -->		
			
                
                
<div id="id01" class="modal">
  
  <form class="modal-content animate" action="/TeamPresence/AddTeam">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="img/img_avatar2.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
        
      <label><b>Team Name</b></label><br>
      <input type="text" placeholder="Enter Team Name" name="team" required><br>

      <label><b>Team Id</b></label><br>
      <input type="text" placeholder="Enter Team Id" name="id" required><br>
       
      <label><b>Manager Id</b></label><br>
      <input type="text" placeholder="Enter Manager Id" name="Mid" required><br>
      
      <label><b>Employee Id</b></label><br>
      <input type="text" placeholder="Enter Employee Id" name="empId" required><br>
      
      <div id="myDiv"> </div>                             
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <a href="#" onclick="addElement()">add more employee</a><br>
                            <script>
                                var i = 0;
                                function addElement() {
                                    var ni = document.getElementById('myDiv');
                                    var newdiv = document.createElement('div');
                                    var divIdName = 'myDiv'+i;
                                    i++;
                                    newdiv.setAttribute('id',divIdName);
                                    newdiv.innerHTML = 'Employee Id : <br><input type="text" name="empId"/> <a href=\'#\' onclick="removeElement(\''+divIdName+'\')">remove</a><br>';
                                    ni.appendChild(newdiv);
                                }
                                function removeElement(divNum) {
                                    var d = document.getElementById('myDiv');
                                    var olddiv = document.getElementById(divNum);
                                    d.removeChild(olddiv);
                                }
                             </script>
            
      <button type="submit">Add Team</button><br>
      <input type="checkbox"> Remember me
    </div>

    <div class="container" style="background-color:#f1f1f1;width:100%;">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
                    
                    
                    
                    
</div>


<div id="id02" class="modal">
  
  <form class="modal-content animate" action="/TeamPresence/AddManager">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="img/img_avatar2.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
        <label><b>Manager Name</b></label><br>
      <input type="text" placeholder="Enter Manager Name" name="ManagerName" required><br>
      
      <label><b>Manager Id</b></label><br>
      <input type="text" placeholder="Enter Manager Id" name="Mid" required><br>

      <label><b>Password</b></label><br>
      <input type="password" placeholder="Enter Password" name="Mpass" required><br>
        
      <button type="submit">Login</button><br>
      <input type="checkbox"> Remember me
    </div>

    <div class="container" style="background-color:#f1f1f1;width:100%;">
      <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>
                
                
                
                
<div id="id03" class="modal">
  
  <form class="modal-content animate" action="/TeamPresence/AddEmployee">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id03').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="img/img_avatar2.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <label><b>Employee Name</b></label><br>
      <input type="text" placeholder="Enter Employee Name" name="Empname" required><br>
      
      <label><b>Employee Id</b></label><br>
      <input type="text" placeholder="Enter Employee Id" name="Eid" required><br>
      
      <label><b>Base Location</b></label><br>
      <input type="text" placeholder="Enter Base Location" name="location" required><br>

      <label><b>Password</b></label><br>
      <input type="password" placeholder="Enter Password" name="pass" required><br>
        
      <button type="submit">Login</button><br>
      <input type="checkbox"> Remember me
    </div>

    <div class="container" style="background-color:#f1f1f1;width:100%;">
      <button type="button" onclick="document.getElementById('id03').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>
                
                
                
                
                


		
<section id="download">
    <div class="container">
	<div class="row text-center heading">
	    <div class="wow animated zoomInDown heading-text"></div>	                	
		<div class="row about-us-text">
                    <div class="col-md-12">
			<p class="text-center download-subtitle">
			    These are the list of different added Teams, Employees and Managers.
			</p>
                    </div>
		</div>
	</div>
    </div>
</section>	
		
		
                
                
<%
    Connection con=DbConnect.getDbConnection();    
%>
                
<section id="price_table">
    <div class="container">
	<div class="row main_content">
	    <ul class="price-table-chart">
                
                
                <li class="text-center">
		    <span class="big">Teams</span>
                    <hr class="full">
                    <%
                        PreparedStatement ps=con.prepareStatement("Select *from teamdata");                                 
                        ResultSet rs=ps.executeQuery();
                        while(rs.next()){
                    %>                                        
                                        
                    <a href= <%= "\"Admin/teamProfile.jsp?id="+rs.getString("Tid")+" &name="+rs.getString("Tname")+"\""%> ><span class="price_table-description"><i class="fa fa-check"></i><%= rs.getString("Tname")%></span> </a>                                        
                    <%}%>                                       
		</li>
		
		<li class="text-center">
		    <span class="big">Employees</span>
		    <hr class="full">
                    <%
                        PreparedStatement ps3=con.prepareStatement("Select *from employeedata");
                        ResultSet rs3=ps3.executeQuery();
                        while(rs3.next()){
                    %>
                    <a href=<%="\"Admin/employeeProfile.jsp?bLoc="+rs3.getString("bLocation")+" &Eid="+rs3.getString("EmpId")+" &name="+rs3.getString("Empname")+"\""%>><span class="price_table-description"><i class="fa fa-check"></i><%= rs3.getString("Empname")%></span></a> 
                    <%}%>		       
        	</li>
		            
                <li class="text-center">
		    <span class="big">Managers</span>
                    <hr class="full">
                    <%
                        PreparedStatement ps2=con.prepareStatement("Select *from managerdata");
                        ResultSet rs2=ps2.executeQuery();
                        while(rs2.next()){
                    %>
                    <a href=<%="\"Admin/managerProfile.jsp?Mid="+rs2.getString("Mid")+" &Mname="+rs2.getString("Mname")+"\""%>><span class="price_table-description"><i class="fa fa-check"></i><%= rs2.getString("Mname")%></span></a> 
                    <% } %>
                </li>
            </ul>
	</div>
    </div>
</section>
		
	<!-- js -->
                <script>
                    var modal = document.getElementById('id01');
                    var modal2 = document.getElementById('id02');
                    var modal3 = document.getElementById('id03');
                    window.onclick = function(event) {
                        if (event.target == modal || event.target == modal2 || event.target == modal3) {
                            modal.style.display = "none";
                            modal2.style.display = "none";
                            modal3.style.display = "none";
                        }
                    }
                </script>
		<script>
 			new WOW().init();
		</script>
		<script>
			$( function() {
  
			  // change is-checked class on buttons
			  	$('.button-group').each( function( i, buttonGroup ) 
			  	{
			    	var $buttonGroup =$( buttonGroup );
			    	$buttonGroup.on( 'click', 'button', function() 
			    	{
			      		$buttonGroup.find('.is-checked').removeClass('is-checked');
			      		$( this ).addClass('is-checked');
			    	});
			  	});
			  
			});
		</script>
        <script src="js/jquery-ui-1.10.3.min.js"></script>
        <script src="js/jquery.knob.js"></script>
        <script src="js/daterangepicker.js"></script>
        <script src="js/bootstrap3-wysihtml5.all.min.js"></script>
        <script src="js/smoothscroll.js"></script>
        <script src="js/nivo-lightbox/nivo-lightbox.min.js"></script>
        <script src="js/script.js"></script>
       
    </body>
</html>
