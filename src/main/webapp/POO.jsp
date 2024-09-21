<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
//String cid=request.getParameter("cid");
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
 background-color: #BC8F8F;
 background-repeat:no-repeat;
 background-size:1500px  700px;
 
 }
table
    {
      border-collapse:-50px;
      width:20%;
    }
    td
    {
      height:20px;
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
<center>
<font face="broadway" color="black" ><h1><h1>!!STATUS OF ORDER!!</h1></h1><br><br></font>
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
<th>sub total</th>
<th>status</th>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from cart1";;
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
<td><%=resultSet.getString("status") %></td>
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
<br><br>

<a href="employee1.jsp"><input type="button" class="btn1"value="back"></a></font></center>

</body>
</html>