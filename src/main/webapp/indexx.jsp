<html>
    <head>
        <title>Upload Image</title>
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
 
    
    
        
        <br><font face="broadway" color="black" ><h2>!!ADD PRODUCT DETAILS!!</h2><br><br></font>
        <form action="UploadImag" method="post" enctype="multipart/form-data">
        <font face="URW Chancery L, cursive" color="#000080">
           image <input type="file" name="img" required="required"/><br/><br/>
            price<input type="number" name="price" required="required"/><br/><br/>
            description<input type="text" name="des" required="required"/><br/><br/>
            
            <label for="type">type</label>
<select id="type" name="type">
  <option value="blouse">blouse</option>
  <option value="lehenga">lehenga</option>
  <option value="aariemb">aariemb</option>
  
  <option value="tassel"> tassel</option>
  <option value="gown">gown</option>
</select><br><br>
            <input type="submit" value="submit" class="submit"><br><br>
            <a href="admin1.jsp"><input type="button" class="submit" value="back"></a>
            </font>
        </form>
    </body>
</html>
