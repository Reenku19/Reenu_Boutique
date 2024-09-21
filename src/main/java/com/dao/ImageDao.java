package com.dao;
import java.util.*;
 import java.sql.Connection;
 import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dto.ImageDto;
import com.utils.DbConnection;
  
 
public class ImageDao {
	
	private static final String GET_PRODUCT_DETAILS_BY_TYPE=" select * from product where type =?";
	
	public List<ImageDto> getImageByType(String type) {
		Connection con = DbConnection.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<ImageDto> list = new ArrayList<ImageDto>();
		ImageDto dto = null;
		try {
		    ps = con.prepareStatement(GET_PRODUCT_DETAILS_BY_TYPE);
			ps.setString(1,type);
			rs = ps.executeQuery();
			while(rs.next()) {
			dto = new ImageDto();
			dto.setId(rs.getInt(1));
			dto.setEncodedImage(Base64.getEncoder().encodeToString(rs.getBytes(2)));
			dto.setPrice(rs.getString(3));
			dto.setDes(rs.getString(4));
			dto.setType(rs.getString(5));
			list.add(dto);
			
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} 
		return list;
		
	}

}
