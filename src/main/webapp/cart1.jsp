 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");


String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3305/";
String database = "demo";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3305/demo?verifyServerCertificate=false&useSSL=true", "root", "root");
Statement st=conn.createStatement();


} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<body>


<center>
<style>
body {
 background-image:url(99.jpeg);
 background-repeat:no-repeat;
 background-size:1500px  800px;
 }
table
    {
      border-collapse:-350px;
      width:70%;
    }
    td
    {
      height:60px;
      background-color:#F5DEB3;
      color:black;
      
    }
    tr
    {
      background-color: #ADD8E6;
      color:black;
    }
    th
    {
     height:40px;
      background-color:#BC8F8F;
      color:blue;
}
 .btn {
  position: center;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: grey;
  color: black;
  font-size: 16px;
  padding: 6px 6px;
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
  background-color: yellow;
  color: black;
  font-size: 16px;
  padding: 6px 6px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
  margin-right: -50px; 
  
   
}


</style>

<br>
<br>
<font face="broadway" color="FFA500" ><h1><h1>!!PRODUCT DETAILS!!!</h1></h1><br><br></font>
<font face="URW Chancery L, cursive" color="#000080">
<table id="officer">
<tr>

<th> Id</th>

<th>Price</th>
<th>Description</th>
<th>Type</th>
<th>Proceed</th>

</tr>
<% 
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();

String sql ="select * from product where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getString("id") %></td>


<td><%=resultSet.getString("price") %></td>
<td><%=resultSet.getString("des") %></td>
<td><%=resultSet.getString("type") %></td>
<td><center><a href="cart2.jsp?id=<%=resultSet.getString("id")%>"><button type="button" class="btn">Proceed</button></a></center></td>
</tr><%} %></table>
<% 


} catch (Exception e) {
e.printStackTrace();
}
%>


<br><br>
<a href="index3.jsp"><input type="button"  class="btn1"value="back"></a></center>
</font>
</body>
</html>