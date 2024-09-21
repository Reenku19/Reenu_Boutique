<!DOCTYPE html>
<html>
<body>
<style>
body {
  background-image:url(oo.png);
  font-family: Comic Sans;
  background-size: cover;
background-position:top center;
background-repeat:no-repeat;
background-attachment:fixed;
background-color:black;

background-size: 1000px 700px;
  
}
.btn {
  position: center;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: black;
  color: white;
  font-size: 16px;
  padding: 6px 6px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
  margin-right: -50px;
  } 
</style>
<center><br><br><br><br><br><br><br><br>
<button class="btn" onclick="myFunction()">Confirm Logout</button>

<p id="demo"></p>

<script>
function myFunction() {
  var txt;
  var r = confirm("Are you sure you want to log out??\nYou will have to log in again!!!");
  if (r == true) {
    window.location.href="welcome.jsp";
 } 

  else {
    window.location.href="admin1.jsp";
  }

  document.getElementById("demo").innerHTML = txt;
 
}

</script>
</center>

</body>
</html>
