<%@page import="java.util.ArrayList"%>
<%@ page import="com.dto.ImageDto" %>
<%@ page import="java.util.List" %> 

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<center>
<body bgcolor="FAE6FA">
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  text-align: center;
  font-family: broadway;
  align :center;
}


.row {
  display: flex;
}

/* Create three equal columns that sits next to each other */
.column {
  flex: 33.3%;
  padding: 10px;
  column-gap:100px;
}
.price {
  color: grey;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card button:hover {
  opacity: 0.7;
}
.btn1 {
  position: center;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: green;
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



<font face="broadway" color="purple">
<%

List<ImageDto> list = (ArrayList<ImageDto>) request.getAttribute("list"); 

%>
<%
for(ImageDto dto : list){%>
<div class="card">
<div class="row">


<div class="column">

<p>PRODUCT ID: <%=dto.getId() %></p>
 <img src="data:image/jpg;Base64,<%=dto.getEncodedImage()%>" style="width:100%">
 <p class="price">Rs <%=dto.getPrice() %></p>
  <p><%=dto.getDes() %></p>
  <p><a href="cart1.jsp?id=<%=dto.getId() %>"><button type="button" class="addtocart">ADD TO CART</button></a></p>
  <% }
%>
 </div>

</div></div></center>
</font><br><br>
<center><a href="index3.jsp"><input type="button" class="btn1" value="back"></a></center>
</body>


</html>