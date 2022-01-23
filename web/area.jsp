<%-- Document   : area --%>

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


function findarea(){
var country=document.getElementById('coun').value;
var state=document.getElementById('sta').value;
var district=document.getElementById('dis').value;
var police=document.getElementById('pol').value;

var url="findname4.jsp?country="+country+"&state="+state+"&district="+district+"&police="+police;
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
					
					<div>
					<%
					if(session.getAttribute("username")!=null){
					out.print("Hi,"+(String)session.getAttribute("username"));
	
					out.print("<form action='logout.jsp'>");
					
					out.print("<input type='submit' align='left' value='Logout' id='login-submit'/>");
					out.print("</form>");
					
					}
					 %>
					
					</div>
					
			</div>
			<br/>
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
						

<br/>
			
							<div id="index_col3">
								<img src="images/contact.png" alt="" title="" style="float: left; padding-right: 10px; padding-bottom: 4px;" />
								<h4>View Reports</h4>
								<div id="log">
								
					<fieldset>
										
											<table style="table-layout: fixed;">
											
											<!-- The first select list -->
<tr><td><B>Country: </B><select name="slist1" id="coun" onchange="SList.getSelect('slist2', this.value);">
 <option>Select Country</option>
 <option value="India">India</option>
 <option value="s1_opt2">S1 Option2</option>
</select></td></tr>
<tr><td id="slist2"></td></tr> <tr><td id="slist3"></td></tr><tr><td id="slist4"></td></tr> 

<script><!--
/* Script Triple Select Dropdown List, from: coursesweb.net/javascript/ */
var SList = new Object();             // JS object that stores data for options


// HERE replace the values with the text you want to be displayed near Select
var txtsl2 = '<B>State:</B>';         // text for the seccond dropdown list
var txtsl3 = '<B>District:</B>';         // text for the third dropdown list
var txtsl4 = '<B>PoliceStation:</B>';  
/*
 Property with options for the Seccond select list
 The key in this object must be the same with the values of the options added in the first select
 The values in the array associated to each key represent options of the seccond select
*/
SList.slist2 = {
 "India": ['UttarPradesh', 'MadhyaPradesh'],
 "s1_opt2": ['s1o2_opt1', 's1o2_opt2'],
};

/*
 Property with options for the Third select list
 The key in this object must be the same with the values (options) added in each Array in "slist2" above
 The values in the array associated to each key represent options of the third select
*/
SList.slist3 = {
 "UttarPradesh": ['Ghaziabad', 'Etawah'],
 "s1o1_opt2": ['s2o1_2_opt1', 's2o1_2_opt2'],
 "s1o2_opt1": ['s2o2_1_opt1', 's2o2_1_opt2'],
 "s1o2_opt2": ['s2o2_2_opt1', 's2o2_2_opt2'],
};

/*
 Property with content associated to the options of the third select list
 The key in this object must be the same with the values (options) added in each Array in "slist3" above
 The values of each key represent the content displayed after the user selects an option in 3rd dropdown list
*/
SList.slist4 = {
 "Ghaziabad": ['Modinagar', 'Mohan Nagar'],
 "s2o1_1_opt2": 'Content for s2o1_1_opt2',
 "s2o1_2_opt1": 'Content for s2o1_2_opt1',
 "s2o1_2_opt2": 'Content for s2o1_2_opt2',
 "s2o2_1_opt1": 'Content for s2o2_1_opt1',
 "s2o2_1_opt2": 'Content for s2o2_1_opt2',
 "s2o2_2_opt1": 'Content for s2o2_2_opt1',
 "s2o2_2_opt2": 'Content for s2o2_2_opt2',
};




    /* From here no need to modify */

// function to get the dropdown list, or content
SList.getSelect = function(slist, option) {
  document.getElementById('scontent').innerHTML = '';           // empty option-content

  if(SList[slist][option]) {
    // if option from the last Select, add text-content, else, set dropdown list
    if(slist == 'scontent') document.getElementById('scontent').innerHTML = SList[slist][option];
    else {
      var addata = '<option>Select Please</option>';
      for(var i=0; i<SList[slist][option].length; i++) {
        addata += '<option value="'+SList[slist][option][i]+'">'+SList[slist][option][i]+'</option>';
      }

      // cases for each dropdown list
      switch(slist) {
        case 'slist2':
          document.getElementById('slist2').innerHTML = txtsl2+' <select name="slist2" id="sta" onchange="SList.getSelect(\'slist3\', this.value);">'+addata+'</select>';
          document.getElementById('slist3').innerHTML = '';
          break;
        case 'slist3':
          document.getElementById('slist3').innerHTML = txtsl3+' <select name="slist3" id="dis" onchange="SList.getSelect(\'slist4\', this.value);">'+addata+'</select>';
           document.getElementById('slist4').innerHTML = '';
          break;
            case 'slist4':
          document.getElementById('slist4').innerHTML = txtsl4+' <select name="slist4" id="pol" onchange="findarea();">'+addata+'</select>';
          break;
      }
    }
  }
  else {
    // empty the tags for select lists
    if(slist == 'slist2') {
      document.getElementById('slist2').innerHTML = '';
      document.getElementById('slist3').innerHTML = '';
    }
    else if(slist == 'slist3') {
      document.getElementById('slist3').innerHTML = '';
    }
    else if(slist == 'slist4') {
      document.getElementById('slist4').innerHTML = '';
    }
  }
}
--></script>
						
							
				
						</table><div id="scontent"></div>
						
				
				
						
						
						
							</fieldset>
									
								</div>
															
							</div>
							<div style="clear: both"></div>
						</div>
						
						<div id="location">
						
						</div>
					</div>
					<div class="main_bot"></div>
				</div>

				</div>
				
				</div>
			</body>

<jsp:include page="footer.html"></jsp:include>