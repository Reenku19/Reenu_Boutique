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
font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: pink;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
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

.button:hover {
  background-color: #000;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}


</style>

<div class="about-section">
  <img src="hh.png"><left>
  
</div>

<h2 style="text-align:center">OUR TEAM</h2>


<div class="row">
  <div class="column">
    <div class="card">
      <img src="ht.jpeg"  style="width:70%">
      <div class="container">
       <center> <h2>REENU CHOUDHARY</h2>
        <p class="title"> Founder</p>
        <p>Rich in four years of experience</p>
        <p>reenu123@gmail.com</p>
         </div></center>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="kk.jpg"  style="width:90%">
      <div class="container">
        <center><h2>REENKU CHOUDHARY</h2>
        <p class="title">MANAGER</p>
        <p>3 year BCA student,Designer in Reenu Boutique</p>
        <p>reenkuchoudhary.vs19@gmail.com</p>
      </div></center>
    </div>
  </div>


<div class="column">
    <div class="card">
      <img src="hu.jpeg"  style="width:70%">
      <div class="container">
       <center> <h2>REKHA CHOUDHARY</h2>
        <p class="title"> ASSISTANT MANAGER</p>
        <p>3 year BCA student</p>
        <p>rekhachoudhary.vs19@gmail.com</p>
      </div></center>
    </div>
  </div><br>
<center><a href="welcome.jsp"><input type="button" class="submit" value="back"></a></center>
</body>
</html>