package com.flower.manServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flower.dao.FlowerDao;
import com.flower.dao.TypeDao;
import com.flower.entity.Flower;
import com.flower.entity.Type;
/**
 * 根据商品名称查找商品
 * @author admin
 *
 */
public class FindGood extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public FindGood() {
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
		// PrintWriter out = response.getWriter();
		String str = request.getParameter("keywords");// 获取要查询的关键字
		// System.out.println(str);
		FlowerDao flowerDao = new FlowerDao();
		List<Flower> list = flowerDao.selectByName(str);
		if (request.getSession().getAttribute("loginMan") != null) {
			request.setAttribute("allFlo", list);
			// response.sendRedirect("manager/typeList.jsp");
			request.getRequestDispatcher("manager/goodsList.jsp").forward(
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
