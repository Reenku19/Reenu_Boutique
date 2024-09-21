package com.image;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ImageDao;
import com.dto.ImageDto;

@WebServlet("/retrieve")
public class retrieve extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		ImageDao dao = null;
		String type = req.getParameter("type");
		System.out.println("value::"+type);
		dao = new ImageDao();
		List<ImageDto> list = dao.getImageByType(type);
		
		req.setAttribute("list", list);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/image-list.jsp");
		dispatcher.forward(req, resp);
				
	
		}

}
