<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String eid = request.getParameter("eid");
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
<font face="broadway" color="#00FFFF" ><h1>!!UPDATE EMPLOYEE DETAILS!!</h1><br><br></font>
<font face="URW Chancery L, cursive" color="#000080">

<table border="1">
<tr>
<th>Id</th>
<th>Employee Name</th>
<th>Category</th>
<th>Phone Number</th>
<th>Date Of Joining</th>
<th>Address</th>
<th>Salary</th>
<th>Password</th>
<th>Update</th>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from eadd";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("eid") %></td>
<td><%=resultSet.getString("ename") %></td>
<td><%=resultSet.getString("category") %></td>
<td><%=resultSet.getString("phno") %></td>
<td><%=resultSet.getString("doj") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("salary") %></td>
<td><%=resultSet.getString("password") %></td>
<td><a href="EUPDATE.jsp?eid=<%=resultSet.getString("eid")%>"><button type="button" class="btn">update</button></a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</font>
</table><br><br>
<center><a href="admin1.jsp"><input type="button" class="btn1" value="back"></a></center>
</body>
</html>