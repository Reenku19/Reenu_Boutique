package com.dto;

public class ImageDto {
private int id;
private String encodedImage;
private String price;
private String des;
private String type;


 public int getId() {
	 return id;
 }
public void setId(int id) {
	this.id = id;
}

public String getEncodedImage()
{
	return encodedImage;
}

public void setEncodedImage(String encodedImage) {
	this.encodedImage = encodedImage;
}


public String getPrice()
{
	return price;
}

public void setPrice(String price) {
	this.price = price;
}

public String getDes()
{
	return des;
}

public void setDes(String des) {
	this.des = des;
}

public String getType()
{
	return type;
}

public void setType(String type) {
	this.type = type;
}
}
