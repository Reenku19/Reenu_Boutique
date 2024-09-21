<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<center><font face="broadway" color="#cc2b5e " size="8"></h1><br><br><br>
<%

String cid=request.getParameter("cid");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3305/demo?verifyServerCertificate=false&useSSL=true", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM cadd WHERE cid="+cid);
out.println("Customer Deleted Successfully!");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<html>
<body>
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

</style><div class="container"><br>
<a href="CDELETE.jsp"><input type="button" class="btn"value="delete another customer"></a>
<a href="admin1.jsp"><button type="button" class="btn" value="Return">Return</button></a></center></div></body>
</html>


