<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>

<% String contentType = request.getContentType();
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while (totalBytesRead < formDataLength) {
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
String saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
FileOutputStream fileOut = new FileOutputStream(saveFile);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();



Connection connection = null;
String connectionURL = "jdbc:oracle:thin:@localhost:1521:xe";;
ResultSet rs = null;
PreparedStatement psmnt = null;
FileInputStream fis;
try {
Class.forName("oracle.jdbc.driver.OracleDriver");
connection = DriverManager.getConnection(connectionURL, "system", "pass123");
File f = new File(saveFile);
psmnt=connection.prepareStatement("select max(id) from forumrep");
rs = psmnt.executeQuery();
if(rs.next()){

int id= rs.getInt(1);
System.out.print(id);
request.setAttribute("ID",id);
}
Integer id= (Integer)request.getAttribute("ID");
System.out.print("id after get"+id);
psmnt = connection.prepareStatement("update forumrep set image=? where id='"+id+"'");
fis = new FileInputStream(f);
psmnt.setBinaryStream(1, (InputStream)fis, (int)(f.length()));
int s = psmnt.executeUpdate();
if(s>0) {
System.out.print("saved");
%>
<jsp:forward page="testdb.jsp"></jsp:forward>
<%
}
else{
%>
<jsp:forward page="post.jsp"></jsp:forward>
<%
}
}
catch(Exception e){e.printStackTrace();}
}
%>