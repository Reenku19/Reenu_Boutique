<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="black">
<center>
<form  action="employeeloginprocess.jsp" method="post">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
img {
  border-radius: 50%;
}
body { 
  width: 100%;
  height:100%;
  font-family: 'Open Sans', sans-serif;
  background: #092756;
  background: -moz-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%),-moz-linear-gradient(top,  rgba(57,173,219,.25) 0%, rgba(42,60,87,.4) 100%), -moz-linear-gradient(-45deg,  #670d10 0%, #092756 100%);
  background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -webkit-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -webkit-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
  background: -o-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -o-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -o-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
  background: -ms-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -ms-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -ms-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
  background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), linear-gradient(to bottom,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), linear-gradient(135deg,  #670d10 0%,#092756 100%);
  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#3E1D6D', endColorstr='#092756',GradientType=1 );
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
  padding: 10px 20px;
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



</style>


<img src="5.jpeg" alt="Avatar" style="width:300px">


  
     <div>
      <font face="ComicSans">
      <h1 style="color:white"><i>EMPLOYEE LOGIN</i></h1>
    
       <b><p style="color:grey;"></p></b>
                <input type="text" placeholder="name" name="ename"> <b> <p style="color:white"></b>
         <input type="password"  placeholder="password" name="password" ></br>
          <div class="container">
          &nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <br><br> <a href="employee1.jsp"><input type="submit" class="btn" value="Login"></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
         &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <a href="welcome.jsp"> <input type="button" class="btn" value="Cancel"></a><br>
         
         </div></font>
      </form>
      </div>
</center>
</body>
</html>