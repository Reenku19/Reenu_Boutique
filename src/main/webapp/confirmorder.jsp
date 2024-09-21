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
Connection connection2 = null;
Statement statement2 = null;
ResultSet resultSet2 = null;
Connection connection3 = null;
Statement statement3 = null;
ResultSet resultSet3 = null;


%>
<!DOCTYPE html>
<html>
<head><center>
<body>
<style>
body{

background-image:url(de.jpeg);
background-size: cover;
background-position:top center;
background-repeat:no-repeat;
background-attachment:fixed;
background-color:white;
background-size: 1300px 900px;
};
table
    {
      border-collapse:collapse;
      width:20%;
    }
    td
    {
    background-color:#FF6347;
      color:black;
    
      height:40px;
    }
    tr
    {height:40px;
      }
    th
    {
      background-color:#BC8F8F;
      color:black;
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
  background-color: blue;
  color: black;
  font-size: 16px;
  padding: 16px 30px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
  margin-right: -50px; 
}   
</style>
<font face="broadway">
<center><h1 style="color:black;">YOUR ORDER HAS BEEN PLACED!!</h1></center>
</font>

<font face="URW Chancery L, cursive">
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT cid,cname,phno,email,address FROM cadd where cid="+cid;

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%><b><h2>
Customer Id:&nbsp&nbsp&nbsp&nbsp
Customer name:<br><br>
<input type="number" name="cid" value="<%=resultSet.getString(1)%>">
&nbsp&nbsp&nbsp&nbsp
<input type="text" name="cname" value="<%=resultSet.getString(2)%>">
<br><br>

Phone number:&nbsp&nbsp&nbsp&nbsp
Email Id:<br><br>
<input type="number" name="phno" value="<%=resultSet.getString(3)%>">
&nbsp&nbsp&nbsp&nbsp
<input type="email" name="email" value="<%=resultSet.getString(4)%>">
<br>
<br>
Address:<br>
<input type="text" name="address" value="<%=resultSet.getString(5)%>">
<br>
</b>

<%} %>
</h2>
<br>
<table>
<tr>
<th>id</th>
<th>price</th>
<th>description</th>
<th>type</th>
<th>quantity</th>
<th>subtotal</th>

</tr>

<% 
try{ 
connection1 = DriverManager.getConnection(connectionUrl+database, userid, password);
statement1=connection.createStatement();
String sql1 ="SELECT cart.id,cart.price,cart.des,cart.type,cart.quan,cart.sub FROM cart where cid="+cid;

resultSet1 = statement1.executeQuery(sql1);
while(resultSet1.next()){
%>
<tr>

<td><%=resultSet1.getString(1) %></td>
<td><%=resultSet1.getString(2) %></td>
<td><%=resultSet1.getString(3) %></td>
<td><%=resultSet1.getString(4) %></td>
<td><%=resultSet1.getString(5) %></td>
<td><%=resultSet1.getString(6) %></td>

<%
} 
}catch (Exception e) {
e.printStackTrace();
}


try{ 
connection2 = DriverManager.getConnection(connectionUrl+database, userid, password);
statement2=connection.createStatement();
String sql2 ="SELECT sum(sub) FROM cart where cid="+cid;

resultSet2 = statement2.executeQuery(sql2);
while(resultSet2.next()){
%></table><font color="blue"><h2>
<b>Total:</b><%=resultSet2.getString(1) %>&nbsp&nbsp
<%
} 
}catch (Exception e) {
e.printStackTrace();
}




try{ 
connection3 = DriverManager.getConnection(connectionUrl+database, userid, password);
statement3=connection.createStatement();
String sql3 ="SELECT ptype FROM payment where cid="+cid;

resultSet3 = statement3.executeQuery(sql3);
while(resultSet3.next()){
%></table>
<b>Payment type:</b><%=resultSet3.getString(1) %>
<%
} 
}catch (Exception e) {
e.printStackTrace();
}

} catch (Exception e) {
e.printStackTrace();
}
%></h2>
</font>

<br><div class="container">
<a href="customer1.jsp"> <button class="btn">back</button></a></center></div>
</font>
</body>
</head>
</html>
