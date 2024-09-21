<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
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
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<body>

<style>
body {
 background-image:url(33.jpeg);
 background-repeat:no-repeat;
 background-size:1300px  900px;
  background-position:center;
 }
table
    {
      border-collapse:-200px;
      width:40%;
    }
    td
    {
      height:30px;
      background-color:#F5DEB3;
      color:black;
        
      
    }
    tr
    {
      background-color:#A52A2A ;
      color:black;width:40%;
    }
    th
    {
      background-color:#FFA8072;
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
<center>

<font face="broadway" color="FFA500" ><h1><h1>!!ORDERS THAT ARE PLACED!! </h1></h1><br><br></font>

</style>>
<font face="URW Chancery L, cursive" color="#000080">
<table border="1">

<br><br>
<tr>
<th>customer id</th>
<th>id</th>
<th>price</th>
<th>description</th>
<th>type</th>
<th>quantity</th>
<th>subtotal</th>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from cart ";
resultSet = statement.executeQuery(sql);
int i=0;
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

</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

<div class="container"><br><br>
<a href="employee1.jsp"><input type="button" class="btn" value="back"></a>
</center></font></div>
</body>
</html>