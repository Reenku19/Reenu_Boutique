<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3305/demo";%>
<%!String user = "root";%>
<%!String psw = "root";%>


<html>
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

</style><center>
<font face="broadway" color="#cc2b5e " size="8"></h1><br><br><br>
<%
String cid= request.getParameter("cid");
String cname=request.getParameter("cname");
String phno=request.getParameter("phno");
String email=request.getParameter("email");
String address=request.getParameter("address");
String password=request.getParameter("password");
if(cid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(cid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update cadd set cid=?,cname=?,phno=?,email=?,address=?,password=? where cid="+cid;
ps = con.prepareStatement(sql);
ps.setString(1,cid);
ps.setString(2, cname);
ps.setString(3, phno);
ps.setString(4, email);
ps.setString(5, address);
ps.setString(6, password);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>


<html><br><div class="container"><br><br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="index.jsp"><input type="button" class="btn"value="update another customer"></a>
<a href="admin1.jsp"><button type="button" class="btn">Return</button></a></body></div>


</html>