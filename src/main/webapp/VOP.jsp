<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
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

</style></font><center><font face="broadway" color="#cc2b5e " size="8"></h1><br><br><br>
<form action="VOPprocess.jsp" method="post">
enter your customer id:<br><br>
<input type="text" name="cid">
<div class="container"><br><br>
<input type="submit" class="btn" value="submit"></div>
</form></center>
</body>
</html>