<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","pass123");
Integer id= (Integer)request.getAttribute("ID");
PreparedStatement ps=con.prepareStatement("select image from forumrep where id='"+id+"'");
ResultSet rs=ps.executeQuery();
rs.next();//now on 1st row
			
Blob b=rs.getBlob(1);
byte barr[]=new byte[(int)b.length()];//an array is created but contains no data
barr=b.getBytes(1,(int)b.length());
			
FileOutputStream fout=new FileOutputStream("C:/Users/Dell/Documents/NetBeansProjects/connectglob/web/images"+id+".jpg");
fout.write(barr);
		    
fout.close();
System.out.println("ok");
			
con.close();
			
}catch (Exception e) {e.printStackTrace();	}

%>
<jsp:forward page="status.jsp"></jsp:forward>