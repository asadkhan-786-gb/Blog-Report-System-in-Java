<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%try{

String username=request.getParameter("username");
String userpass=request.getParameter("userpass");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String address=request.getParameter("address");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","pass123");

PreparedStatement ps=con.prepareStatement("select username,email from forumreg where username ='"+username+"' or email='"+email+"'");
//ps.setString(1,n);
out.print("<br>");
ResultSet rs=ps.executeQuery();
if(rs.next()){
if(username.equals(rs.getString(1))|| email.equals(rs.getString(2))){
request.setAttribute("regerr","Sorry! Username or Email Already Exists");
%>

<jsp:forward page="register.jsp"></jsp:forward>
<%
}

else{

if(email.equals(rs.getString(2))){
request.setAttribute("regerr","Sorry!Username or Email id Already Exists");
%>

<jsp:forward page="register.jsp"></jsp:forward>
<%
}

}
}
else{
PreparedStatement ps1=con.prepareStatement("insert into forumreg values(?,?,?,?,?,?)");
ps1.setInt(1,3);
ps1.setString(2,username);
ps1.setString(3,userpass);
ps1.setString(4,email);

ps1.setString(5,mobile);
ps1.setString(6,address);
int s=ps1.executeUpdate();
System.out.print(s);
if(s>0){
request.setAttribute("reg","Successfully Registered,Please Login");
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
else{
request.setAttribute("regerr","Sorry! some errors occur,Please follow constraints");
%>

<jsp:forward page="register.jsp"></jsp:forward>
<%
}


}



con.close();


}catch(SQLException e2){
e2.printStackTrace();
request.setAttribute("regerr","Sorry! some errors occur,Please Fill Correct Detail");
  %>

<jsp:forward page="register.jsp"></jsp:forward>
<%

}
%>