<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3305/demo";%>
<%!String user = "root";%>
<%!String psw = "root";%>
 <center><h1><font face="broadway" color="#cc2b5e " size="8"></h1><br><br><br><%
String cid= request.getParameter("cid");
String id=request.getParameter("id");
String price=request.getParameter("price");
String des=request.getParameter("des");
String type=request.getParameter("type");
String quan=request.getParameter("quan");
String sub=request.getParameter("sub");
String status=request.getParameter("status");
if(cid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(cid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
Statement st=con.createStatement();
int i = st.executeUpdate("insert into cart1(cid,id,price,des,type,quan,sub,status)values('"+cid+"','"+id+"','"+price+"','"+des+"','"+type+"','"+quan+"','"+sub+"','"+status+"')");
out.println("status is updated!!");
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>


<html>
<body>
<style>
body {
  background-image:url(.jpeg);
  font-family: Comic Sans;
  background-size: cover;
background-position:top center;
background-repeat:no-repeat;
background-attachment:fixed;
background-color:#FFE4C4;

background-size: 1700px 800px;
  
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
  background-color: pink;
  color: black;
  font-size: 16px;
  padding: 16px 30px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
  margin-right: -50px; 
}

.container .btn:hover {
  background-color: black;
  color: blue;
}

</style><center>

<div class="container"><br>
<a href="UPOO.jsp"><input type="button" class="btn" value="update another status"></a>
<a href="employee1.jsp"><button type="button" class="btn">Return</button></a></body></div>


</html>