<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: URW Chancery L, cursive;
  font-size: 17px;
  padding: 8px;
  background-color: 
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #00BFFF;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

input[type=number] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #04AA6D;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
</head>
<body>
<div class="row">
  <div class="col-75">
    <div class="container">
    <font face="broadway" color="black" >
      <form action="paypro.jsp" method="post">
     <center><h2>method of payment!!</h2></center> <br>
        <div class="row">
          <div class="col-50">
            
            <label for="cid"><i class="fa fa-user"></i></label> 
            <input type="text" id="cid" name="cid" placeholder="customer id">
            
            <label for="fname"><i class="fa fa-user"></i> </label>
            <input type="text" id="fname" name="name" placeholder="First Name">
            <label for="email"><i class="fa fa-envelope"></i></label>
            <input type="text" id="email" name="email" placeholder="Email">
            <label for="adr"><i class="fa fa-address-card-o"></i></label>
            <input type="text" id="adr" name="address" placeholder="Address">
            <label for="city"><i class="fa fa-institution"></i> </label>
            <input type="text" id="city" name="city" placeholder="City">

         <label for="phno"><i class="fa fa-phone"></i> </label>
         
                <input type="number" id="phno" name="phno" placeholder="Phone Number">
                
              <center>  <h2>payment type:</h2>
                <label for="category"><i class="fa fa-option"></i> </label>
  <button  name="ptype" value="cash on delivery" type="submit" ><img src="cash.jpg"  height=100px width=100px></button>
&nbsp&nbsp&nbsp
<button name="ptype" value="phone pe" type="submit"><img src="phonepe.png"  height=100px width=100px></button>
&nbsp&nbsp&nbsp
<button name="ptype" value="Google pay" type="submit"><img src="gp.png"  height=100px width=100px></button>
&nbsp&nbsp&nbsp
             </center>
         </form>
              </div>
            </div>
          </div>
      

      
    </div>
  </div>
</font>
</body>
</html>
