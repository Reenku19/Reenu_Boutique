<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<center><font face="broadway" color="#cc2b5e " size="8"></h1><br><br><br>
<%

String ename=request.getParameter("ename");
String category=request.getParameter("category");
String phno=request.getParameter("phno");
String doj=request.getParameter("doj");
String address=request.getParameter("address");
String salary=request.getParameter("salary");
String password=request.getParameter("password");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3305/demo?verifyServerCertificate=false&useSSL=true", "root", "root");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into eadd(ename,category,phno,doj,address,salary,password)values('"+ename+"','"+category+"','"+phno+"','"+doj+"','"+address+"','"+salary+"','"+password+"')");
out.println("employee is added!!");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<html><br>
<br>
<body>

<style>
body {
  background-image:url(.jpeg);
  font-family: Comic Sans;
  background-size: cover;
background-position:top center;
background-repeat:no-repeat;
background-attachment:fixed;
background-color:#FFE4C4;

background-size: 1700px 800px;
  
}
.container {
  position: relative;
  width: 100%;
  max-width: 400px;
}


.container .btn {
  position: center;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: pink;
  color: black;
  font-size: 16px;
  padding: 16px 30px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
  margin-right: -50px; 
}

.container .btn:hover {
  background-color: black;
  color: blue;
}

</style></font>
<div class="container"><br><br>
<a href="EADD.jsp"><input type="button" class=" btn"value="add another employee"></a>
<a href="admin1.jsp"><input type="button" class="btn"value="back"></a></center></div>
</html>

