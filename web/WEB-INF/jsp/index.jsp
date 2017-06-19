<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Team Presence</title>
		<!-- meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1">

	    <!-- css -->
        <link rel="stylesheet" href="css/loginForm.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
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

    <body >
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

                            <div class="collapse navbar-collapse" id="navbar-example">
				<ul class="nav navbar-nav navbar-right">
                                    <li><a href="#about" class="active">About</a></li>
                                    <li><a href="#our_service">Service</a></li>
                                    <li><a href="#Meet">Meet with us</a></li>
                                    <li><a href="#contact">Contact</a></li>
				</ul>
                            </div>
			</div>
                    </nav>	
		</section>
				

		<section id="starting">
                    <div class="text-center starting-text wow animated zoomInDown">
			<h2>Welcome to </h2>
			<h1 class="rene">TEAM PRESENCE</h1>
                        <button onclick="document.getElementById('id01').style.display='block'" class="bttn apple-store btn btn-lg" style="width:200px;">
                            <img src="img/play.png" alt="play">
                            <p>You Are: </p>
                            <h6>ADMIN</h6>
                        </button>
                                                
                        <button onclick="document.getElementById('id02').style.display='block'" class="bttn apple-store btn btn-lg" style="width:200px;">
                            <img src="img/play.png" alt="play">
                            <p>You Are: </p>
                            <h6>MANAGER</h6>
                        </button>                        
                                                
                        <button onclick="document.getElementById('id03').style.display='block'" class="bttn apple-store btn btn-lg" style="width:200px;">
                            <img src="img/play.png" alt="play">
                            <p>You Are: </p>
                            <h6>EMPLOYEE</h6>
                        </button>
						
                    </div>
		</section>
		<div id="bottom" class="bottom text-center">
                    <a href="#about"><i class="ion-ios7-arrow-down"></i></a>
                </div>
            </div>			
			
                
                
<div id="id01" class="modal">
  
    <form class="modal-content animate" action="/TeamPresence/AdLogin">
        <div class="imgcontainer">
           <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
           <img src="img/img_avatar2.png" alt="Avatar" class="avatar">
        </div>

        <div class="container">
          <label><b>Username</b></label><br>
          <input type="text" placeholder="Enter Username" name="id" required><br>

          <label><b>Password</b></label><br>
          <input type="password" placeholder="Enter Password" name="pass" required>

          <button type="submit">Login</button><br>
          <input type="checkbox"> Remember me
        </div>

        <div class="container" style="background-color:#f1f1f1;width:100%;">
          <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
          <span class="psw">Forgot <a href="#">password?</a></span>
        </div>
    </form>
</div>


<div id="id02" class="modal">
  
    <form class="modal-content animate" action="/TeamPresence/ManagerLogin">
        <div class="imgcontainer">
          <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
          <img src="img/img_avatar2.png" alt="Avatar" class="avatar">
        </div>

        <div class="container">
          <label><b>Username</b></label><br>
          <input type="text" placeholder="Enter Username" name="id" required><br>

          <label><b>Password</b></label><br>
          <input type="password" placeholder="Enter Password" name="pass" required><br>

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
  
    <form class="modal-content animate" action="/TeamPresence/EmpLogin">
        <div class="imgcontainer">
          <span onclick="document.getElementById('id03').style.display='none'" class="close" title="Close Modal">&times;</span>
          <img src="img/img_avatar2.png" alt="Avatar" class="avatar">
        </div>

        <div class="container">
          <label><b>Username</b></label><br>
          <input type="text" placeholder="Enter Username" name="id" required><br>

          <label><b>Password</b></label><br>
          <input type="password" placeholder="Enter Password" name="pass" required><br>

          <button type="submit">Login</button><br>
          <input type="checkbox" > Remember me
        </div>

        <div class="container" style="background-color:#f1f1f1;width:100%;">
          <button type="button" onclick="document.getElementById('id03').style.display='none'" class="cancelbtn">Cancel</button>
          <span class="psw">Forgot <a href="#">password?</a></span>
        </div>
    </form>
</div>                               
                                
                                <!-- About Us -->
<section id="about">
    <div class="container">
	<div class="row text-center heading">
            <div class="wow animated zoomInDown heading-text">
		<h3>About Us</h3>
	        <hr class="full"><br/>	                	
            </div>
	</div>
	<div class="row about-us-text">
            <div class="col-md-12">
		<p class="text-center">
                    We help customers do business better by leveraging our industry-wide
                    experience, deep technology expertise, comprehensive portfolio of services and vertically
                    aligned business model
                </p>
            </div>
	</div>
				
<!--        <div class="row main_content">
            <div class="col-md-4 col-sm-4 wow animated zoomIn" data-wow-delay="0.1s">
		<figure>
                    <img class="pro img-responsive center-block" src="img/wipro_img.jpg" alt="image">
		</figure>
		<h5 class="text-center">Wipro Team</h5> 
            </div> 					
	</div>-->
    </div>
</section>	<!-- about us -->

		<!-- Our service -->
<section id="our_service">
    <div class="container">
	<div class="row text-center heading">
	    <div class="wow animated zoomInDown heading-text">
                <h3>Services</h3>
                <hr class="full"><br/>
            </div>
        </div>
        <div class="main_content">
            <div class="services">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
			<div class="service">
                            <img src="img/service1.png" alt="service1">
                            <div class="text-center">
                                <h4>Web Application</h4>
                                	
			    </div> <!-- .text-center -->
			</div> <!-- .service -->
                    </div> <!-- .col-md-3 -->
                    <div class="col-md-3 col-sm-6">
			<div class="service">
			    <img src="img/service2.png" alt="service1">
			    <div class="text-center">
                                <h4>Mobile Application</h4>
                                	
			    </div> <!-- .text-center -->
			</div> <!-- .service -->
                    </div> <!-- .col-md-3 -->
                    <div class="col-md-3 col-sm-6">
			<div class="service">
			    <img src="img/service3.png" alt="service1">
			    <div class="text-center">
				<h4>Mobile Game</h4>
					
			    </div> <!-- .text-center -->
			</div> <!-- .service -->
                    </div> <!-- .col-md-3 -->
	            <div class="col-md-3 col-sm-6">
			<div class="service">
			    <img src="img/service4.png" alt="service1">
			        <div class="text-center">
				    <h4>Web Design</h4>
				    	
			        </div> <!-- .text-center -->
			</div> <!-- .service -->
	            </div> <!-- .col-md-3 -->
			        		
		</div>	<!-- row -->
	    </div>	<!-- services -->
	</div>	<!-- main_content -->
    </div>	<!-- container -->
</section>	<!-- our_service -->

		<!-- Meet With Us -->
<section id="Meet">
    <div class="container">
	<div class="row text-center heading">
	    <div class="wow animated zoomInDown heading-text">
	        <h3>Meet with us</h3>
	        <hr class="full">
	    </div>	<!-- row -->
	    <div class="row about-us-text">
		<div class="col-md-12">
	            <p class="text-center">
			We build things which can help people at large scale.
		    </p>
		</div>
	    </div>	<!-- row -->
	</div> <!-- #heading-text -->
    </div>
    <div class="main_content">
        <div class="container">
            <div class="row">
                
                <div class="col-md-3 col-sm-6">
                    <div class="meet-item">
			<img src="img/meet1.png" alt="meet1">
			<div class="text-center">
                            <h4>SUMAN SATYAM</h4>
                            <p>
				DEVELOPER
                            </p>
                            <a class="ico twitter" href="#"><i class="fa fa-twitter"></i></a>
                            <a class="ico facebook" href="#"><i class="fa fa-facebook"></i></a>
                            <a class="ico google-plus" href="#"><i class="fa fa-google-plus"></i></a>
			</div> <!-- .text-center -->
                    </div> <!-- .meet-item -->
                </div> <!-- .col-md-3 -->
                
                <div class="col-md-3 col-sm-6">
                    <div class="meet-item">
			<img src="img/meet2.png" alt="meet1">
			<div class="text-center">
                            <h4>MANOJ KUMAR</h4>
                            <p>
                                PROJECT MANAGER
                            </p>
                            <a class="ico twitter" href="#"><i class="fa fa-twitter"></i></a>
                            <a class="ico facebook" href="#"><i class="fa fa-facebook"></i></a>
                            <a class="ico google-plus" href="#"><i class="fa fa-google-plus"></i></a>
			</div> 
                    </div> 
                </div> 
            </div>	
	</div>	
    </div>	
</section>	

		
		<!-- contact -->
<section id="contact">
    <div class="container text-center">
        <div class="row text-center">
            <div class="bg-image">
		<div class="col-md-6 col-md-offset-3 text-center share-text wow animated zoomInDown heading-text">
		    <p class="heading">
		        If you got any questions, please do not hesitate to send us a message.
                    </p>
                </div>
            </div>
        </div>
        <div class="row text-center main_content">
            <form method="post" action="#" class="">
                <div class="col-md-4 col-md-offset-2 text-center">
                    <div class="form">
                        <div class="input-group margin-bottom-sm">
                            <span class="input-group-addon">
                                <i class="fa fa-user fa-fw"></i>
                            </span>
                            <input class="form-control" type="text" placeholder="Name" required>
                        </div>
                        <div class="input-group margin-bottom-sm">
                            <span class="input-group-addon">
                                <i class="fa fa-envelope-o fa-fw"></i>
                            </span>
                            <input class="form-control" name="email" type="email" placeholder="Email address" required>
                        </div>
                        <div class="input-group margin-bottom-sm">
                            <span class="input-group-addon">
                                <i class="fa fa-tags fa-fw"></i>
                            </span>
                            <input class="form-control" type="text" placeholder="Subject">
                        </div>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <div class="form">
                        <div class="input-group margin-bottom-sm">
                            <span class="input-group-addon">
                                <i class="fa fa-comment-o fa-fw"></i>
                            </span>
                            <input type="text" name="text" class="form-control message" placeholder="Your Message">
                        </div>
                    </div>
                </div>
            </form>	
        </div>
        <input class="btn btn-sub" type="submit" value="Send Message">
    </div>
</section>	<!-- contacts --> 
			

		<!-- js -->
                <script>
                    // Get the modal
                    var modal = document.getElementById('id01');
                    var modal2 = document.getElementById('id02');
                    var modal3 = document.getElementById('id03');

                    // When the user clicks anywhere outside of the modal, close it
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
