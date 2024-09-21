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
 background-image:url(loo.jpeg);
 background-repeat:no-repeat;
 background-size:1500px  700px;
 
 }
table
    {
      border-collapse:-40px;
      width:20%;
    }
    td
    {
      height:10px;
      background-color:#98FB98;
      color:black;
      
    }
    tr
    {
      background-color: #ADD8E6;
      color:black;
    }
    th
    {
      background-color:#FFDAB9;
      color:blue;
}
 .btn {
  position: center;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: pink;
  color: black;
  font-size: 16px;
  padding: 7px 7px;
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
<center>
<font face="broadway" color="FFA500" ><h1><h1>!!UPDATE STATUS OF ORDER!!</h1></h1><br><br></font>
<font face="URW Chancery L, cursive" color="#000080">
<h1></h1>
<table border="1">
<tr>
<th>customer id</th>
<th>id</th>
<th>price</th>
<th>description</th>
<th>type</th>
<th>quan</th>
<th>sub total</th>
<th>status</th>
<th>update</th>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from cart";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("cid") %></td>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("price") %></td>
<td><%=resultSet.getString("des") %></td>
<td><%=resultSet.getString("type") %></td>
<td><%=resultSet.getString("quan") %></td>
<td><%=resultSet.getString("sub") %></td>
<td>  </td>
<td><center><a href="UPOO1.jsp?id=<%=resultSet.getString("id")%>"><button type="button" class="btn">update</button></a></center></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table></font><br>
<a href="employee1.jsp"><input type="button" class="btn1" value="back"></a></center>
</body>
</html>