<style>
/* Dropdown Button */
.dropbtn {
  background-color: #008080;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
  position: relative;
  display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: purple;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #ddd;}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {display: block;}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {background-color: #3e8e41;}</style>
<style>

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
}

li a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}

/* Change the link color on hover */
li a:hover {
  background-color: #555;
  color: yellow;
}
body{

background-image:url(ke.jpg);
background-size: cover;
background-position:right;
background-repeat:no-repeat;
background-attachment:fixed;
background-color:pink;
background-size: 1000px 700px;
};

</style>
<div class="dropdown">
 <button class="dropbtn">EMPLOYEE </button>
 <div class="dropdown-content">
    <a href="EADD.jsp">ADD</a>
    <a href="EDELETE.jsp">DELETE</a>
   <a href="index1.jsp">UPDATE </a>
    <a href="EDISPLAY.jsp">DISPLAY</a>
  </div>
  </div>
  <div class="dropdown">
 <button class="dropbtn">CUSTOMER </button>
 <div class="dropdown-content">
    <a href="CADD.jsp">ADD</a>
     <a href="CDELETE.jsp">DELETE</a>
    <a href="index.jsp">UPDATE </a>
    <a href="CDISPLAY.jsp">DISPLAY</a>
  </div>
  </div>
   <div class="dropdown">
  <button class="dropbtn">PRODUCT </button>
  <div class="dropdown-content">
    <a href="indexx.jsp">ADD</a>
    <a href="./Contro">VIEW PRODUCTS</a>
    </div>
    </div>
    <div class="dropdown">
  <button class="dropbtn">VIEW </button>
  <div class="dropdown-content">
    <a href="viewcon.jsp">VIEW CONTACT US</a>
    
    
   </div>
    
   </div>
  </div>
   <div class="dropdown">
  <a href="CL.jsp"><button class="dropbtn">LOG OUT</button></a>
  </div>
   
  </div>
  <br><br><br><br><br><br><h1>
 <font face="Brush Script MT, Brush Script Std, cursive" color="black" align="left"><i>
 All Women Are Graceful <br>In Their Own Way! <br>
 They Just Need The<br> Outfit That Matches It!!</i></h1>
 </font>
 </html> 
