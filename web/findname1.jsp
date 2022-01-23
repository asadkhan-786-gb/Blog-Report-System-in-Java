<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<%
String n=request.getParameter("val");
System.out.println(n);
if(n.length()>0){
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","pass123");

PreparedStatement ps=con.prepareStatement("select * from forumreg where email ='"+n+"'");
//ps.setString(1,n);
out.print("<br>");
ResultSet rs=ps.executeQuery();
if(rs.next()){
out.print("<font style='color:red'>Already Exist</font>");
}



con.close();
}catch(Exception e){e.printStackTrace();}
}//end of if
%>