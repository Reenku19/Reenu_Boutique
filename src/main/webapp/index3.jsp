<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>index</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<style>

div {
    height: 400px;
    background: linear-gradient(to bottom, #333300 0%, #cc0000 100%)
}

.btn {
  border: none;
  background-color:inherit;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
  display: inline-block;
}

.btn:hover {background: black;}
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
</head>
<style>

body{

background-image:url();
background-size: cover;
background-position:top center;
background-repeat:no-repeat;
background-attachment:fixed;
background-color:black;
background-size: 1000px 800px;
};
</style><br><br><br>
<p align="right">
<a href="viewcart.jsp"><button><i class="fa fa-shopping-cart" style="font-size:48px;color:red"></i></button></p></a>
<br>

<center>
<form action="./retrieve" method="post" >



<button  name="type" value="blouse" type="text" ><img src="%206.png"  height=300px width=300px></button>
&nbsp&nbsp&nbsp
<button name="type" value="lehenga" type="text"><img src="%20(7).png"  height=300px width=300px></button>
<br></br><br></br>
<button name="type" value="aariemb" type="text"><img src="%20(5).png"  height=300px width=300px></button>
&nbsp&nbsp&nbsp
<button name="type" value="tassel" type="text"><img src="....jpeg"  height=300px width=300px></button><br></br><br></br>
<button name="type" value="gown" type="text"><img src="%20(8).png"  height=300px width=300px></button>
<br></br><br></br>
 </form>

<a href="customer1.jsp"><input type="button" class="btn1" value="back"></a>
</center>
</body>
</html>