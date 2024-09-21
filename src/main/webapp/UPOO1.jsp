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
String sql ="select * from cart where id="+id;
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
<body><br><center><font face="broadway" color="black" ><h2>!!UPDATE!!</h2><br><br></font>

<font face="URW Chancery L, cursive" color="black">
<form method="post" action="UPOOpro.jsp">
customer id:<br>
<input type="text" name="cid" value="<%=resultSet.getString("cid") %>">
<br>
id:<br>
<input type="number" name="id" value="<%=resultSet.getString("id") %>">
<br>


price:<br>
<input type="number" name="price" value="<%=resultSet.getString("price") %>">
<br>
description:<br>
<input type="text" name="des" value="<%=resultSet.getString("des") %>">
<br>

type:<br>
<input type="text" name="type" value="<%=resultSet.getString("type") %>">
<br>
quantity:<br>
<input type="text" name="quan" value="<%=resultSet.getString("quan") %>">
<br>
subtotal:<br>
<input type="text" name="sub" value="<%=resultSet.getString("sub") %>">
<br>


<label for="status">status</label><br>
<select id="status" name="status">
  <option value="complete">complete</option>
  <option value="incomplete">incomplete</option>
 </select>

<br>

<br>
<input type="submit"class="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</font></center>
</body>
</html>
