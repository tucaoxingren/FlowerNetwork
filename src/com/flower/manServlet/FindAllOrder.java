package com.flower.manServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flower.dao.OrdersDao;
import com.flower.entity.Orders;

public class FindAllOrder extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public FindAllOrder() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1.设置编码方式
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("type/html;charset=UTF-8");
		//PrintWriter out = response.getWriter();
		// 2.调dao层
		OrdersDao ordersDao = new OrdersDao();
		List<Orders> ordList = ordersDao.selectAll();
		if (request.getSession().getAttribute("loginMan") != null) {
			request.setAttribute("allOrd", ordList);
			request.getRequestDispatcher("manager/orderList.jsp").forward(
					request, response);
		} else {
			//out.println("<script>alert('您还未登录，请登录')</script>");
			response.sendRedirect("manager/login.jsp");
			//return;
			//response.sendRedirect("manager/login.jsp");
		}/*
		out.flush();
		out.close();*/

	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
