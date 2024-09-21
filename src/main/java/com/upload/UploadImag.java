package com.upload;
import java.io.IOException;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet("/uploadImag")
@MultipartConfig(maxFileSize = 16177216)
public class UploadImag extends HttpServlet{
 
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp)
throws ServletException, IOException {
String connectionURL = "jdbc:mysql://localhost:3305/demo?verifyServerCertificate=false&useSSL=true";
String user = "root";
String pass = "root";
 
int result = 0;
Connection con = null;
String cid=req.getParameter("cid");
Part img = req.getPart("img");
String price=req.getParameter("price");
String des=req.getParameter("des");
String type=req.getParameter("type");

 
if(img != null){
try{
Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection(connectionURL, user, pass);
    
    PreparedStatement ps = con.prepareStatement("insert into product(img,price,des,type) values(?,?,?,?)");
    InputStream is = img.getInputStream();
    ps.setBlob(1, is);
    ps.setString(2, price);
    ps.setString(3, des);
    ps.setString(4, type);
    
 result = ps.executeUpdate();
}
catch(Exception e){
e.printStackTrace();
}
finally{
if(con != null){
try{
con.close();
}
catch(Exception e){
e.printStackTrace();
}
}
}
}
if(result > 0){
     resp.sendRedirect("result.jsp?message=Image+Uploaded");
    }
else{
resp.sendRedirect("result.jsp?message=Some+Error+Occurred");
}
}
}
