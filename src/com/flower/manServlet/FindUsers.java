package com.flower.manServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flower.dao.FlowerDao;
import com.flower.dao.UsersDao;
import com.flower.entity.Flower;
import com.flower.entity.Users;

/**
 * 根据用户名查询用户
 * 
 * @author admin
 * 
 */
public class FindUsers extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public FindUsers() {
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
		Users users = new Users();
		users.setUsLoginName(str);
		
		UsersDao usersDao = new UsersDao();
		Users users2 = new Users();
		users2 = usersDao.selectById(users);
		List<Users> list = new ArrayList<Users>();
		list.add(users2);
		if (users2 != null) {
			request.setAttribute("user", list);
			// response.sendRedirect("manager/typeList.jsp");
			request.getRequestDispatcher("manager/userList.jsp").forward(
					request, response);
		} else {
			response.sendRedirect("FindAllUsers");
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
