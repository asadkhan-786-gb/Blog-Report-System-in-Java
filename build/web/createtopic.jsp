<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");

%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
%>
<%
java.util.Date sqdate=Calendar.getInstance().getTime();
	java.sql.Date dat =new java.sql.Date(sqdate.getTime());

String topic=(String)request.getParameter("topic");
String email=(String)session.getAttribute("email");
try{
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","pass123");
  PreparedStatement ps =con.prepareStatement("select topic from forumtpc where topic='"+topic+"'");
  ResultSet rs=ps.executeQuery();
  if(rs.next()){
  request.setAttribute("created","Topic Already Exist");
  %>
  
  <jsp:forward page="discuss.jsp"></jsp:forward>
  
  <% 
  }
  else{
 ps =con.prepareStatement("insert into forumtpc(topic,email,createdon)"+"values(?,?,?)");
ps.setString(1,topic);
ps.setString(2,email);

	ps.setDate(3,dat);
	
int s=	ps.executeUpdate();
if(s>0){
System.out.print("save");
request.setAttribute("created","Topic has been successfully created,view your topic");
%>

<jsp:forward page="discuss.jsp"></jsp:forward>

<%
}
else{System.out.print("sorry!try again");}	
 }
 }catch(Exception e){}
   %>


