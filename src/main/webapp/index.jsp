<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String cid = request.getParameter("cid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3305/";
String database = "demo";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<body>
<style>
body {
 background-image:url(p.jpg);
 background-repeat:no-repeat;
 background-size:1500px  900px;
 }
table
    {
      border-collapse:-50px;
      width:20%;
    }
    td
    {
      height:20px;
      background-color:#FFCOCB;
      color:black;
      
    }
    tr
    {
      background-color: #ADD8E6;
      color:black;
    }
    th
    {
      background-color:#FFA500;
      color:blue;
}
 .btn {
  position: relative;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: pink;
  color: black;
  font-size: 16px;
  padding: 9px 9px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
  margin-right: -50px; 
}
.btn1 {
  position: center;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: pink;
  color: black;
  font-size: 16px;
  padding: 6px 6px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
  margin-right: -50px; 
}

</style><center>
<font face="broadway" color="#00FFFF" ><h1>!!UPDATE CUSTOMER DETAILS!!</h1><br><br></font>
<font face="URW Chancery L, cursive" color="#000080">
<table border="1">
<tr>
<th>Customer Id</th>
<th>Customer Name</th>
<th>Phone Number</th>
<th>Email</th>
<th>Address</th>
<th>Password</th>
<th>Update</th>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from cadd";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("cid") %></td>
<td><%=resultSet.getString("cname") %></td>
<td><%=resultSet.getString("phno") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("password") %></td>
<td><a href="CUPDATE.jsp?cid=<%=resultSet.getString("cid")%>"><button type="button" class="btn">update</button></a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</font></center>
</table><br><br>
<center><a href="admin1.jsp"><input type="button" class="btn1" value="back"></a></center>
</body>
</html>