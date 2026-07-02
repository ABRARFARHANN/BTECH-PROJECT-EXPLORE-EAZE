<!DOCTYPE HTML>
<!--
	Traveler by freehtml5.co
	Twitter: http://twitter.com/fh5co
	URL: http://freehtml5.co
-->
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Traveler &mdash; Free Website Template, Free HTML5 Template by FreeHTML5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="FreeHTML5.co" />

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- Animate.css -->
	<link rel="stylesheet" href="css2/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css2/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css2/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css2/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css2/magnific-popup.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css2/bootstrap-datepicker.min.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css2/owl.carousel.min.css">
	<link rel="stylesheet" href="css2/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css2/style.css">

	<!-- Modernizr JS -->
	<script src="js2/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
		
	
	<div id="page">

	
	<!-- <div class="page-inner"> -->
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			
			<div class="row">
				<div class="col-sm-4 col-xs-12">
				<?php
				session_start();
				if(isset($_SESSION['user']))
				{
					?>
						<div id="gtco-logo"><a href="index2.php"><img src='logo.png'  width='80%'/></a></div>
						<?php
						
				}
				else
				{
					?>
					<div id="gtco-logo"><a href="index.php"><img src='logo.png'  width='80%'/></a></div>
					<?php
				}
				?>
				</div>
			<div class="col-xs-8 text-right menu-1">
					<ul>
					<?php
				if(isset($_SESSION['user']))
				{
					?>
                   <li> <a href="index2.php">Home</a></li>
				   <li><a href="home.php#gtco-section">Destination</a></li>
					<!--<li><a href="direction2.php">Explore</a></li>-->
					<li><a href="itinerary.php">Itinerary</a></li>
					
					
					<li><a href="index.php">Logout</a></li>
					 	
						<?php
						
				}
				else
				{
					?>
					 <li><a href="index.php">Home</a></li>
					   <li><a href="index.php#gtco-section">Destination</a></li>
					<?php
				}
				?>
					
					
					
						
					</ul>	
				</div>
			
		</div>
	</nav>
	