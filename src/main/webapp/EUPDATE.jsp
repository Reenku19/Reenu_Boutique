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
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from eadd where eid="+eid;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<html>
<body>
<style>
body {
 background-image:url(12.jpeg);
  background-position:center;
 background-repeat:no-repeat;
 background-size:1200px  900px;
 background-color:#D2B48C;
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

</style><center><body><br><font face="broadway" color="black" ><h2>!!UPDATE EMPLOYEE DETAILS!!</h2><br><br></font>

<form method="post" action="eupdate-process.jsp">
<font face="URW Chancery L, cursive" color="black">
employee id:<br>
<input type="hidden" name="eid" value="<%=resultSet.getString("eid") %>">
<input type="text" name="eid" value="<%=resultSet.getString("eid") %>">
<br>
employee name:<br>
<input type="text" name="ename" value="<%=resultSet.getString("ename") %>">
<br>
category:<br>
<input type="text" name="category" value="<%=resultSet.getString("category") %>">
<br>

phone number:<br>
<input type="number" name="phno" value="<%=resultSet.getString("phno") %>">
<br>
date of joining:<br>
<input type="date" name="doj" value="<%=resultSet.getString("doj") %>">
<br>
address:<br>
<input type="text" name="address" value="<%=resultSet.getString("address") %>">
<br>
salary:<br>
<input type="number" name="salary" value="<%=resultSet.getString("salary") %>">
<br>
password:<br>
<input type="password" name="password" value="<%=resultSet.getString("password") %>">
<br>

<br>
<input type="submit" class="submit" value="submit"></center>
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%></font>
</body>
</html>
