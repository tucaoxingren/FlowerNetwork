package com.flower.manServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flower.dao.OrdersDao;
import com.flower.dao.TypeDao;
import com.flower.entity.Orders;
import com.flower.entity.Type;

/**
 * 查询订单
 * 
 * @author admin
 * 
 */
public class FindOrder extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public FindOrder() {
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

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1.设置编码方式
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("type/html;charset=UTF-8");
		
		String str = request.getParameter("keywords");// 获取要查询的关键字
		// System.out.println(str);
		OrdersDao ordersDao = new OrdersDao();
		List<Orders> list = ordersDao.selectByLoginName(str);
		
		if (request.getSession().getAttribute("loginMan") != null) {
			request.setAttribute("allOrd", list);
			// response.sendRedirect("manager/typeList.jsp");
			request.getRequestDispatcher("manager/orderList.jsp").forward(
					request, response);
		} else {
			response.sendRedirect("manager/login.jsp");
		}
				
		/*
		 * out.flush(); out.close();
		 */
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
