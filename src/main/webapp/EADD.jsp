<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<style>
body {
 background-image:url(uh.jpeg);
 background-repeat:no-repeat;
 background-size:1500px  1000px;
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
 
<body><b>
<br><font face="broadway" color="black" ><h2>!!ADD EMPLOYEE DETAILS!!</h2><br><br></font>
<form method="post" action="eaddprocess.jsp"><font face="URW Chancery L, cursive" color="#000080">
Employee Name:  <input type="text" name="ename">
<br><br>
<label for="category">Category:</label>
<select id="category" name="category">
  <option value="tailor">tailor</option>
  <option value="aari embroider">aari embroider</option>
  <option value="computerised embroider ">computerised embroider</option>
  <option value="tassels worker"> tassels worker</option>
</select>
<br>
<br>
Phone number:   <input type="number" name="phno">
<br><br>

Date of joining: <input type="date" name="doj"><br><br>
Address:    <input type="text" name="address">
<br><br>
Salary:    <input type="text" name="salary">
<br><br>
Password:    <input type="password" name="password">
<br>

<br>
<a href="welcome.jsp"><input type="submit"  value="submit" class="submit"></a><br><br>
<a href="admin1.jsp"><input type="button" class="submit" value="back"></a>
 </b>
 </font>
</form>
 
</body>
</html>

