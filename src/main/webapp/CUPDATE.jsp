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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from cadd where cid="+cid;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<html>
<body>
<style>
body {
 background-image:url(12.jpeg);
 background-repeat:no-repeat;
 background-size:1200px  900px;
 }
.submit {
  background-color: purple; 
  border: none;
  color: white;
  padding: 10px 15px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}

</style>
<body><br><center><font face="broadway" color="black" ><h2>!!UPDATE CUSTOMER DETAILS!!</h2><br><br></font>

<form method="post" action="cupdate-process.jsp">
<font face="URW Chancery L, cursive" color="black">
customer id:<br>
<input type="hidden" name="cid" value="<%=resultSet.getString("cid") %>">
<input type="text" name="cid" value="<%=resultSet.getString("cid") %>">
<br>
customer name:<br>
<input type="text" name="cname" value="<%=resultSet.getString("cname") %>">
<br>


phone number:<br>
<input type="number" name="phno" value="<%=resultSet.getString("phno") %>">
<br>
email:<br>
<input type="email" name="email" value="<%=resultSet.getString("email") %>">
<br>

address :<br>
<input type="text" name="address" value="<%=resultSet.getString("address") %>">
<br>
password:<br>
<input type="password" name="password" value="<%=resultSet.getString("password") %>">
<br>

<br>
<input type="submit" class="submit" value="submit">
</form></center>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%></font>
</body>
</html>
