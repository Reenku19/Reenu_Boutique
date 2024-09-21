<%@page import="java.util.ArrayList"%>
<%@page import="comm.dto.Dto"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Image</title>
</head>
<body>
<style>
body {
 background-image:url);
 background-repeat:no-repeat;
 background-size:1000px  900px;
  background-color: #cc2b5e;
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
      color:black;
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
  padding: 9px 9px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
  margin-right: -50px; 
}

</style>
<center><font face="  Bradley Hand ,serfi" color="black"><h1><b>!!PRODUCTS UPLOADED BY ADMIN!!</b></h1></font><br><br><br>
<font face="broadway" ></center>
<%
List<Dto> list = (ArrayList<Dto>)request.getAttribute("list");
%>

<center>
<table border="1px">
<thead>
<tr><th>ID</th><th>IMAGE</th><th>PRICE</th><th>DESCRIPTION</th><th>TYPE</th><th>DELETE</th></tr>
</thead>

<%
for(int i=0;i<list.size();i++){
Dto dto = list.get(i);
String id = dto.getId();
String price = dto.getPrice();
String des= dto.getDes();
String type = dto.getType();
%>
<tr><td><%=id%></td>
<td><img src="./Downloader?id=<%=id%>" height="250" width="250"/></td>
<td><%=price %></td>
<td><%=des %></td>
<td><%=type %></td>
<td><center><a href="prodelete1.jsp?id=<%=id %> "><input type="button" class="btn" value="delete"></a></center></td>
</tr>
<%}
%>
</font>
</table><br><br>
</center><center><a href="admin1.jsp"><input type="button" class="btn1" value="back"></a></center>

</body>
</html>