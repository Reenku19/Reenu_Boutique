<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String ename=request.getParameter("ename");
//session.putValue("ename",ename);
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3305/demo?verifyServerCertificate=false&useSSL=true","root","root");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from eadd where ename='"+ename+"' and password='"+password+"'");
try{
rs.next();
if(rs.getString("password").equals(password)&&rs.getString("ename").equals(ename))
{
  response.sendRedirect("employee1.jsp");

} 
else{
	System.out.println("Invalid password or username.");
}
}
catch (Exception e) {
e.printStackTrace();
}
%>
<html>
<center>
<center>
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

</style><h1><font face="broadway" color="#cc2b5e " size="8"></h1><br><br><br>
<h3>!!!invalid username or password!!!</h3></font>
<div class="container">
<a href ="employeelogin.jsp" ><input type="button" class="btn" value="back"></a></center></div>
</html>