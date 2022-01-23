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
								
					
<FORM action="upload.jsp" METHOD="POST" enctype="multipart/form-data">
										<fieldset>
											<table style="table-layout: fixed;">
											
	<tr><td><B>Upload pic Please:</B><input type="file" name="file"></td></tr>
							
						<tr><td><input type="submit" value="submit"/></td></tr>
						</table>
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