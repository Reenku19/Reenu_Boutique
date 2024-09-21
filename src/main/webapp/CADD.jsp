<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
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
 
 
 
 </center>
 <script>  
function validateform(){  
var cname=document.myform.cname.value;  
var phno=document.myform.phno.value; 
var x=document.myform.email.value;  
var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf("."); 
var address=document.myform.address.value; 
var password=document.myform.password.value;  
  
if (cname==null || cname==""){  
  alert("Name can't be blank");  
  return false;
}

else if ((phno.length<10)||(phno.length>10)){  
	  alert("phone number must have 10 digits");  
	  return false;  
	}
	
else if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
  alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
  return false;  
  } 
else if (address==null || address==""){  
	 alert("address can't be blank");  
	  return false;  
	}

else if(password.length<6){  
	  alert("Password must be at least 6 characters long.");  
	  return false;  
	  }
}  
</script>  
<body><br><font face="broadway" color="black" ><h2>!!ADD CUSTOMER DETAILS!!</h2><br><br></font>
<form name="myform" method="post" action="caddprocess.jsp" onsubmit="return validateform()">
<font face="URW Chancery L, cursive" color="#000080">
Customer Name:<br>
<input type="text" name="cname">
<br>
Phone number:<br>
<input type="number" name="phno">
<br>
Email Id:<br>
<input type="email" name="email">
<br>
Address:<br>
<input type="text" name="address">
<br>
password:<br>
<input type="password" name="password">
<br>

<br>
 <input type="submit" value="submit" class="submit">
 <br>
 <br>
 <a href="admin1.jsp"><input type="button" class="submit" value="back"></a>
 </font>
 
</form>
 
</body>
</html>

