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
						
						
						<br/>
			
						
								<img src="images/contact.png" alt="" title="" style="float: left; padding-right: 10px; padding-bottom: 4px;" />
								<h4>Create a Topic</h4>
								<div id="log"> 
								<fieldset>
								<form action="createtopic.jsp">
								<font style="color: navy" size="2"><B>Enter the Topic Name:</B></font><input type="text" name="topic"/>
								<input type="submit" value="create" />
								</form>
								</fieldset>
								<% 
								if(request.getAttribute("created")!=null){
								out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+request.getAttribute("created"));
								
								}
								%>
								<br/>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="viewtopic.jsp"><font style="color: navy;"><B>View All Previously created topic </B></font></a>
								</div>
						
						</div>



					</div>
					<div class="main_bot"></div>
				</div>

				</div></div>
				<body>&quot;</body>

<jsp:include page="footer.html"></jsp:include>