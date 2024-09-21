package comm.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import comm.dao.Dao;
import comm.dto.Dto;


@WebServlet("/Contro")
public class Contro extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Dao Dao = null;
		Dao = new Dao();
		List<Dto> list =  Dao.getData();
		req.setAttribute("list", list);
		RequestDispatcher dispatcher = req.getRequestDispatcher("image-list1.jsp");
		dispatcher.forward(req, resp);
	}
}
