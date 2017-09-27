package com.flower.manServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.flower.dao.TypeDao;
import com.flower.entity.Type;

/**
 * typeList 查询
 */
public class FindType extends HttpServlet {

	public FindType() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	/**
	 * typeList 查询类型
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1.设置编码方式
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("type/html;charset=UTF-8");
		//PrintWriter out = response.getWriter();
		//String str = request.getParameter("keywords");//获取要查询的关键字
		String str = request.getParameter("keywords");//获取要查询的关键字
		//System.out.println(str);
		TypeDao typeDao = new TypeDao();
		List<Type> tpList = typeDao.seleteByName(str);
		if (request.getSession().getAttribute("loginMan") != null) {
			request.setAttribute("types", tpList);
			//response.sendRedirect("manager/typeList.jsp");
			request.getRequestDispatcher("manager/typeList.jsp").forward(request,
					response);
		} else {
			response.sendRedirect("manager/login.jsp");
		}
		/*
		request.setAttribute("types", tpList);
		request.getRequestDispatcher("manager/typeList.jsp").
		forward(request, response);*/
		/*
		HttpSession session = request.getSession();
		session.setAttribute("types", tpList);
		
		// 4.
		response.sendRedirect("manager/typeList.jsp");*/
		/*
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
