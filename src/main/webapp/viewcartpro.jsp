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
Connection connection1 = null;
Statement statement1 = null;
ResultSet resultSet1 = null;
%>
<!DOCTYPE html>
<html>
<head>
<center>
<style>
</style>
<body>
<center>
<style>
body {
 background-image:url(78.jpeg);
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
      background-color:#DA70D6;
      color:black;
        
      
    }
    tr
    {
      background-color: #ADD8E6;
      color:black;width:40%;
    }
    th
    {
      background-color:#FFA8072;
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

<table id="officer">
<body>

<font face="broadway" color="FFA500" ><h1><h1>!!MY CART!!</h1></h1><br><br></font>
<font face="URW Chancery L, cursive" color="#000080">
<table id="book">
 <tr bgcolor="#FF5733">
<th>id</th>
<th>price</th>
<th>description</th>
<th>type</th>
<th>quantity</th>
<th>subtotal</th>
<th>delete</th>
      
      </tr>


<%
try{ 
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT cart.id,cart.price,cart.des,cart.type,cart.quan,cart.sub FROM cart where cid="+cid;

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<tr bgcolor="#DEB887">

<td><%=resultSet.getString(1) %></td>
<td><%=resultSet.getString(2) %></td>
<td><%=resultSet.getString(3) %></td>
<td><%=resultSet.getString(4) %></td>
<td><%=resultSet.getString(5) %></td>
<td><%=resultSet.getString(6) %></td>
<td><a href="cardelpro.jsp?id=<%=resultSet.getString("id") %>"><button type="button" class="btn">Delete</button></a></td>
</tr>
<%} %>
</table>

<% 
try{ 
connection1 = DriverManager.getConnection(connectionUrl+database, userid, password);
statement1=connection.createStatement();
String sql1 ="SELECT sum(sub),cid FROM cart where cid="+cid;

resultSet1 = statement1.executeQuery(sql1);
while(resultSet1.next()){
%>
<font color="pink"><h2><b>Total:</b><%=resultSet1.getString(1) %>
<br></h2></font>
<br>

&nbsp&nbsp
<a href="PAYMENT.jsp?cid=<%=resultSet1.getString(2) %>"><button type="button" class="btn1" >payment</button></a>
<br><br>
&nbsp&nbsp
<a href="confirmorder.jsp?cid=<%=resultSet1.getString(2) %>"><button type="button" class="btn1" >confirm order</button></a>
<%
} 
}catch (Exception e) {
e.printStackTrace();
}


} catch (Exception e) {
e.printStackTrace();
}
%>


</font>
</body>
</html>