<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


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
<script type="text/javascript">

function required()  
{  
var empt = document.forms["form1"]["username"].value;  
if (empt == "")  
{  
alert("Username can't be blank");  
return false;  
}  
else   
{  
var empt = document.forms["form1"]["userpass"].value;  
if (empt == "")  
{  
alert("Password can't be blank");  
return false;  
}  
else   
{  
var empt = document.forms["form1"]["email"].value;  
if (empt == "")  
{  
alert("Please Enter valid Email id");  
return false;  
}  
else   
{
var email = document.forms["form1"]["email"].value; 
var validemail =/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,4}$/;
if(!(validemail.test(email))){
alert("Invalid email address")
form1.email.focus
return false
}
var empt = document.forms["form1"]["mobile"].value;  
if (empt == "")  
{  
alert("Please Enter valid Mobile no. with country code ");  
return false;  
}  
else   
{  
var empt = document.forms["form1"]["address"].value;  
if (empt == "")  
{  
alert("Address can't be blank,Please Fill valid address");  
return false;  
}  
else   
{  
return true;   
}  
}     
}  
}     
}  
}       
  




function validate(){
var v=document.getElementById('text1').value;


var url="findname.jsp?val="+v;
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('location').innerHTML=val;
}
}
function validate1(){
var v=document.getElementById('text3').value;


var url="findname1.jsp?val="+v;
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getInfoe;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getInfoe(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('location1').innerHTML=val;
}

}





</script>

		
</head>


<body>
<%session.invalidate(); %>
		<div id="bg_img">
			<div id="site_div">
			
				<div id="header">
					<div id="logo">
					<img src="images/page1-img3.png" align="left"></img>
					<br/>
					<br/><span><font style="color:maroon" size="32"><b>Connect Globe</b></font></span>
					</div>
					<div id="menu">
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="post.jsp">Post Report</a></li>
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

						<div id="index_box">
							<div id="index_box_top"></div>
							<div id="index_box_bg">
								<h3>Now You can Share Your Social Problem such as some kind of Harassment,Bribe matters.</h3>
								<p>Simply just Register Yourself and Do login After that click on Post Report Link as shown above.And After selecting Your subject and location YOu can post Your matter Simply .This will be visible to every visitors and our Supporters will try to proceed it further</p>
								<div class="readred"><a href="#">read more</a></div>
							</div>
							<div id="index_box_bot"></div>
						</div>


						<div id="index_col">
							<div id="index_col1">
								<img src="images/notebook.png" alt="" title="" style="float: left; padding-right: 10px; padding-bottom: 4px;" />
								<h4>Latest News</h4>
								<div class="pad" style="padding-bottom: 7px; border-bottom: 1px dotted #666666; margin-bottom: 10px;">
									<a href="#">Apr. 10, 2010</a><br/>
									<p><a href="#">Suspendisse rutrum interdum lacinia. </a><br/>
										Suspendisse tempus aliquet elit sit amet pellentesque. Donec iaculis pulvinar mauris, </p>
									<div style="text-align: right"><a href="#">read more...</a></div>
								</div>
								<div class="pad" style="padding-bottom: 3px;">
									<a href="#">Apr. 10, 2010</a><br/>
									<p><a href="#">Suspendisse rutrum interdum lacinia. </a><br/>
										Suspendisse tempus aliquet elit sit amet pellentesque. Donec iaculis pulvinar mauris, </p>
									<div style="text-align: right"><a href="#">read more...</a></div>
								</div>
							</div>
							<div id="index_col2">
								<img src="images/green.png" alt="" title="" style="float: left; padding-right: 10px; padding-bottom: 4px;" />
								<h4>Recent Discovery</h4><br/>
								<a href="images/project1.jpg" class="pirobox_footer" title="First Project Screenshot"><img src="images/pic-02.jpg" alt="" title=""/></a><br/><br/>
								<a href="images/project2.jpg" class="pirobox_footer" title="Second Project Screenshot"><img src="images/pic-03.jpg" alt="" title=""/></a>
							</div>
							<div id="index_col3">
								<img src="images/contact.png" alt="" title="" style="float: left; padding-right: 10px; padding-bottom: 4px;" />
								<h4>Registration</h4>
								<div id="log">
								
								<%if(request.getAttribute("regerr")!=null){
								out.print("<font style='color:red'>"+request.getAttribute("regerr")+"</font>");
								} %>
									<form id="commentform" method="post" action="registerprocess.jsp" onsubmit="return required()" name="form1">
										<fieldset>
											User Name:<span id="location"></span><input id="text1" type="text" name="username"  onblur="validate()"/><br/>
											Password:<input id="text2" type="password" name="userpass" /><br/>
										
											Email:<span id="location1"></span><input id="text3" type="text" name="email" onblur="validate1()"/><br/>
											Mobile:<input id="text3" type="text" name="mobile" /><br/>
											Address:<input id="text3" type="text" name="address" /><br/>
											<input type="submit" id="login-submit" value="Register" />
							
										</fieldset>
									</form>
								</div>
							</div>
							<div style="clear: both"></div>
						</div>
					</div>
					<div class="main_bot"></div>
				</div>

				</div></div>
				</body>


<jsp:include page="footer.html"></jsp:include>
</html>