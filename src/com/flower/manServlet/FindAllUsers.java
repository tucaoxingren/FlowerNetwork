package com.flower.manServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flower.dao.UsersDao;
import com.flower.entity.Users;

public class FindAllUsers extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public FindAllUsers() {
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
		// 2.
		UsersDao usersDao = new UsersDao();
		List<Users> userList = usersDao.selectAllUsers();
		if (request.getSession().getAttribute("loginMan") != null) {
			request.setAttribute("user", userList);
			request.getRequestDispatcher("manager/userList.jsp").forward(request,
					response);
		} else {
			response.sendRedirect("manager/login.jsp");
		}
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
