<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Test</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
		<script type="text/javascript" src="lib/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="lib/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="lib/jquery.coda-slider-2.0.js"></script>
<!-- Initialize each slider on the page. Each slider must have a unique id -->
	<script type="text/javascript">
	$().ready(function() {
	$('#coda-slider-2').codaSlider({
		autoSlide: true,
		autoSlideInterval: 6000,
		autoSlideStopWhenClicked: true	
			
	});
 });
</script>

<script type="text/javascript" src="lib/pirobox.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$().piroBox({
			my_speed: 400, //animation speed
			bg_alpha: 0.1, //background opacity
			slideShow : false, // true == slideshow on, false == slideshow off
			slideSpeed : 4, //slideshow duration in seconds(3 to 6 Recommended)
			close_all : '.piro_close,.piro_overlay'// add class .piro_overlay(with comma)if you want overlay click close piroBox

	});
});
</script>

<link href="style.css" rel="stylesheet" type="text/css" /> 


		
</head>
<body>
		<div id="bg_img">
			<div id="site_div">
			
				<div id="header">
					<div id="logo">
					<img src="images/page1-img3.png" align="left"></img>
					<br/>
					<br/><span><font style="color:maroon" size="32"><b>Connect Globe</b></font></span>
	
					<%
					 System.out.print("hur"+session.getAttribute("username"));
					 %>
					<div>Hi,<%if(session.getAttribute("username")!=null){
					out.print((String)session.getAttribute("username"));
					} %><form action="logout.jsp">
					
					<input type="submit" align="left" value="Logout" id="login-submit"/></form></div></div>
				<br/>
					<div id="menu">
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="post.jsp">Post Status</a></li>
							<li><a href="status.jsp">View Status</a></li>
							<li><a href="area.jsp">Your Area</a></li>
							<li><a href="advice.jsp">Your Advice</a></li>
							<li><a href="discuss.jsp">Discuss</a></li>
							<li><a href="register.jsp">Register</a></li>
								<li><a href="admin.jsp">Admin</a></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
				</div>
				
				
				
				
				<div class="inner_copy"><div class="inner_copy">Best selection of premium <a href="http://www.templatemonster.com/pack/joomla-1-6-templates/">Joomla 1.6 templates</a></div></div>
				<div id="main">
					<div class="index_main_top"></div>
					<div class="main_bg">
						<div class="index_prev_grad">
						
							<div class="coda-slider-wrapper">
	<div class="coda-slider preload" id="coda-slider-2">
		<div class="panel">
			<div class="panel-wrapper">
				
				<div class="prev_but_center">
								<div class="prev_but_center_left">
									<div class="prev_img"><img src="images/pic-01.jpg" alt="" title=""/></div>
								</div>
								<div class="prev_but_center_right">
									<p><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. </a><br/>
										Nam justo odio, congue id fermentum sit amet, placerat sed nibh. Vestibulum pharetra nibh eu magna accumsan tristique. Sed ac velit urna, venenatis vulputate purus.</p>
									<div class="read"><a href="#">read more</a></div>
									<p><a href="#">Vivamus id lobortis nisi. Duis semper porta justo, vel sodales velit vehicula vel. </a><br/>
										Donec non vulputate odio. Quisque tellus augue, tristique vel lobortis ut, convallis vel est. Nam vel congue lectus. Suspendisse ullamcorper odio et leo congue eu semper </p>
									<div class="read"><a href="#">read more</a></div>
								</div>
							</div>
				
			</div>
		</div>
		<div class="panel">
			<div class="panel-wrapper">
				
				<div class="prev_but_center">
								<div class="prev_but_center_left">
									<div class="prev_img"><img src="images/header_scroll.jpg" alt="" title=""/></div>
								</div>
								<div class="prev_but_center_right">
									<p><a href="#">Vivamus id lobortis nisi. Duis semper porta justo, vel sodales velit vehicula vel. </a><br/>
										Donec non vulputate odio. Quisque tellus augue, tristique vel lobortis ut, convallis vel est. Nam vel congue lectus. Suspendisse ullamcorper odio et leo congue eu semper Lorem ipsum dolor sit amet, consectetur adipiscing elit. <br/><br/>
										Nam justo odio, congue id fermentum sit amet, placerat sed nibh. Vestibulum pharetra nibh eu magna accumsan tristique. Sed ac velit urna, venenatis vulputate purus.</p>
									<div class="read"><a href="#">read more</a></div>									
								</div>
							</div>
				
			</div>
		</div>	
		
		<div class="panel">
			<div class="panel-wrapper">
				
				<div class="prev_but_center">
								<div class="prev_but_center_left">
									<div class="prev_img"><img src="images/header_scroll2.jpg" alt="" title=""/></div>
								</div>
								<div class="prev_but_center_right">
									<p><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. </a><br/>
										Nam justo odio, congue id fermentum sit amet, placerat sed nibh. Vestibulum pharetra nibh eu magna accumsan tristique. Sed ac velit urna, venenatis vulputate purus.</p>
									<div class="read"><a href="#">read more</a></div>
									<p><a href="#">Vivamus id lobortis nisi. Duis semper porta justo, vel sodales velit vehicula vel. </a><br/>
										Donec non vulputate odio. Quisque tellus augue, tristique vel lobortis ut, convallis vel est. Nam vel congue lectus. Suspendisse ullamcorper odio et leo congue eu semper </p>
									<div class="read"><a href="#">read more</a></div>
								</div>
							</div>
				
			</div>
		</div>
		
		<div class="panel">
			<div class="panel-wrapper">
				
				<div class="prev_but_center">
								<div class="prev_but_center_left">
									<div class="prev_img"><img src="images/header_scroll3.jpg" alt="" title=""/></div>
								</div>
								<div class="prev_but_center_right">
									<p><a href="#">Vivamus id lobortis nisi. Duis semper porta justo, vel sodales velit vehicula vel. </a><br/>
										Donec non vulputate odio. Quisque tellus augue, tristique vel lobortis ut, convallis vel est. Nam vel congue lectus. Suspendisse ullamcorper odio et leo congue eu semper Lorem ipsum dolor sit amet, consectetur adipiscing elit. <br/><br/>
										Nam justo odio, congue id fermentum sit amet, placerat sed nibh. Vestibulum pharetra nibh eu magna accumsan tristique. Sed ac velit urna, venenatis vulputate purus.</p>
									<div class="read"><a href="#">read more</a></div>									
								</div>
							</div>
				
			</div>
		</div>
				
			
	</div><!-- .coda-slider -->
</div>
						
						</div>					
						<div class="index_prev_bot"></div>