<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<font face="URW Chancery L, cursive" color="#000080">

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

String sql ="select * from product where id="+id ;

resultSet = statement.executeQuery(sql);
 while(resultSet.next()){
%>


<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<body>
<style>
 
Body {
  font-family: Calibri, Helvetica, sans-serif;
  background-color:#b2ad7f;

background-image:url(90.jpeg);
background-size: cover;
background-position:top center;
background-repeat:no-repeat;
background-attachment:fixed;
background-color:white;
background-size: 1300px 900px;
};
  
}
submit { 
       background-color: #000066; 
       width: 40%;
        color:white; 
        padding: 10px; 
        margin: 10px 0px; 
        border: none; 
        cursor: pointer; 
         } 
 
 form { 
       width:30%;
        border: 3px solid  #F4A460; 
         background-color: #F4A460;
    } 
 input[type=text], input[type=password] { 
        width: 80%; 
        margin: 8px 0;
        padding: 5px 5px; 
        display: inline-block; 
        border: 2px solid LimePunch; 
        box-sizing: border-box; 
    }
 button:hover { 
      
        background-color:  #3e4444; 
        
    } 
  .cancelbtn { 
        width: 40%; 
        padding: 10px 18px;
        margin: 5px 5px;
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
   
 .container { 
      
        padding: 25px; 
        background-color:" #3e4444";
    }
      p.outset{
         border-style:outset;
         border-color: white;}
     
</style> 

<form method="post" action="cart3.jsp">
<div data-ng-app="" data-ng-init="quantity=1;price=<%=resultSet.getString("price")%>">
 enter your id: <br>
<input type="number" name="cid" value=""   >

<br>

id<br>

<input type="text" name="id" value="<%=resultSet.getString("id") %>">
<br>

price<br>
<input type="text" name="price" value="<%=resultSet.getString("price")%>" ng-model="price" >

<br>
description:<br>
<input type="text" name="des" value="<%=resultSet.getString("des") %>">

<br>
type:<br>
<input type="text" name="type" value="<%=resultSet.getString("type") %>">
<br>
Quantity:<br>
<input type="number" id="number" name="quan" value="quan"  ng-model="quantity">

<br>
<br>
SubTotal:<br>
<input type="text" id="number" name="sub" value="{{quantity * price}}">
</div>
<br>

<input type="submit" class="submit"value="submit">
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
