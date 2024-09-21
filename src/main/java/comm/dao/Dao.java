package comm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;   

import com.utils.*;

import comm.dto.Dto;

public class Dao {
private final String GET_DATA = "select id,price,des,type from product";
private final String GET_IMAGE_QUERY = "select img from product where id=?";
Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;

public List<Dto> getData(){
	Dto Dto = null;
	List<Dto> imageList = new ArrayList<Dto>();
	try {
		con = DbConnection.getConnection();
		ps = con.prepareStatement(GET_DATA);
		rs = ps.executeQuery();
		while(rs.next()) {
			Dto = new Dto();
			Dto.setId(rs.getString(1));
			Dto.setPrice(rs.getString(2));
			Dto.setDes(rs.getString(3));
			Dto.setType(rs.getString(4));
			imageList.add(Dto);
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	return imageList;
}

public byte[] getImage(String id){
	byte[] image = null;
	try {
	con = DbConnection.getConnection();
	ps = con.prepareStatement(GET_IMAGE_QUERY);
	ps.setString(1, id);
	rs = ps.executeQuery();
	if(rs.next()) {
	image = rs.getBytes(1);
	}
	}catch(Exception e) {
		e.printStackTrace();
	}
	return image;
}
}












