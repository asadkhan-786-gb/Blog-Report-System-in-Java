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
String country=request.getParameter("slist1");
String state=request.getParameter("slist2");
String district=request.getParameter("slist3");
String police=request.getParameter("slist4");
String report=request.getParameter("report");
String status=request.getParameter("status");
String email=(String)session.getAttribute("email");
System.out.print(country);
System.out.print(state);
System.out.print(district);
System.out.print(police);
System.out.print(report);
System.out.print(status);
System.out.print(email);
	try{
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","pass123");
  PreparedStatement ps =con.prepareStatement("insert into forumrep(country,state,district,police_station,report,status,email,postedon)"+"values(?,?,?,?,?,?,?,?)");
ps.setString(1,country);
ps.setString(2,state);
	ps.setString(3,district);
	ps.setString(4,police);
	ps.setString(5,report);
	ps.setString(6,status);
	ps.setString(7,email);
		ps.setDate(8,dat);
		
int s=	ps.executeUpdate();
if(s>0){
System.out.print("save");
%>

<jsp:forward page="uploadpic.jsp"></jsp:forward>

<%
}
else{System.out.print("sorry!try again");}	
 }catch(Exception e){}
   %>