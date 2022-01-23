<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<jsp:include page="header.jsp"></jsp:include>

<%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");

%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
%>

						<div id="index_box">
							<div id="index_box_top"></div>
							<div id="index_box_bg">
								<h3>Now You can Share Your Social Problem such as some kind of Harassment,Bribe matters.</h3>
								<p>Simply just Register Yourself and Do login After that click on Post Report Link as shown above.And After selecting Your subject and location YOu can post Your matter Simply .This will be visible to every visitors and our Supporters will try to proceed it further</p>
								<div class="readred"><a href="#">read more</a></div>
							</div>
							<div id="index_box_bot"></div>
						</div>

<br/>
			
							<div id="index_col3">
								<img src="images/contact.png" alt="" title="" style="float: left; padding-right: 10px; padding-bottom: 4px;" />
								<h4>Post Report</h4>
								<div id="log">
								
					
<FORM action="uploadimage.jsp" METHOD=POST name="form">
										<fieldset>
											<table style="table-layout: fixed;">
											
											<!-- The first select list -->
<tr><td><B>Country: </B><select name="slist1" onchange="SList.getSelect('slist2', this.value);">
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
          document.getElementById('slist2').innerHTML = txtsl2+' <select name="slist2" onchange="SList.getSelect(\'slist3\', this.value);">'+addata+'</select>';
          document.getElementById('slist3').innerHTML = '';
          break;
        case 'slist3':
          document.getElementById('slist3').innerHTML = txtsl3+' <select name="slist3" onchange="SList.getSelect(\'slist4\', this.value);">'+addata+'</select>';
           document.getElementById('slist4').innerHTML = '';
          break;
            case 'slist4':
          document.getElementById('slist4').innerHTML = txtsl4+' <select name="slist4" onchange="SList.getSelect(\'scontent\', this.value);">'+addata+'</select>';
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
-->



</script>
						<tr><td><B>Your Report:</B><textarea rows="6" cols="100" name="report"></textarea><br/></td></tr>
				
				
				
						  <tr><td><B>Status:</B></td></tr><tr><td><input type="radio" name="status" value="Pending"/>Pending</td></tr><tr><td><input type="radio" name="status" value="Executed"/>Executed</td></tr>
							
						<tr><td><input type="submit" value="submit" ondblclick="var s=form.report.value; s=s.replace(/&amp;/g,'&amp;amp;');s=s.replace(/&lt;/g,'&amp;lt;');s=s.replace(/&gt;/g,'&amp;gt;');s=s.replace(/\n/g,'&lt;br /&gt;\n');s=s.replace(/\r/g,'');form.report.value = s;"/></td></tr>
						</table><div id="scontent"></div>
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