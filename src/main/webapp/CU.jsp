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
 background-image:url(k.jpg);
 background-repeat:no-repeat;
 background-size:1500px  800px;
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
 
 <script>  
function validateform(){  
var name=document.myform.name.value;  
var phno=document.myform.phno.value; 
var x=document.myform.email.value;  
var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf("."); 
var address=document.myform.address.value;  
var subject=document.myform.subject.value; 
var message=document.myform.message.value; 

  
if (name==null || name==""){  
  alert("Name can't be blank");  
  return false;  
}
else if ((phno.length<10)||(phno.length>10)){  
	  alert("phone number must have 10 digits");  
	  return false;  
	}
else if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
	  alert("Please enter a valid e-mail address");  
	  return false;  
	  } 
else if (address==null || address==""){  
	  alert("address can't be blank");  
	  return false;  
	}
else if (subject==null || subject==""){  
	  alert("subject can't be blank");  
	  return false;  
	}
else if (message==null || message==""){  
	  alert("leave a message for us");  
	  return false;  
	}
	  }  
</script>

<body><br><font face="broadway" color="#808000" ><p align="right"><h1>!!FEEL FREE TO CONTACT US!!</h1><br><br></font>
<form name="myform" method="post" action="CUprocess.jsp" onsubmit="return validateform()">
<font face="URW Chancery L, cursive" color="#FFF8DC">
 Name:<br>
<input type="text" name="name">
<br>
Phone number<br>
<input type="number" name="phno">
<br>
Email Id:<br>
<input type="email" name="email">
<br>
Address<br>
<input type="text" name="address">
<br>
subject<br>
<input type="text" name="subject">
<br>
message<br>
 <textarea id="message" name="message" style="height:50px"></textarea>
<br>
<br>
 <input type="submit" class="submit"value="submit"><br><br>
  <a href="welcome.jsp"><input type="button" class="submit" value="back"></a>
 
 </font>
</form>
</body>
</html>

