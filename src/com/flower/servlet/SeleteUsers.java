package com.flower.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.flower.dao.UsersDao;
import com.flower.entity.Flower;
import com.flower.entity.Users;

public class SeleteUsers extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public SeleteUsers() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1.设置编码方式
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("type/html;charset=UTF-8");
		// 2.接收参数（从register.jsp中接收数据）
		//request.getSession().getAttribute("loginUser")
		Users users = new Users();
		users = (Users) request.getSession().getAttribute("loginUser");
		//HttpSession session = request.getSession();
		//String str = (String) session.getAttribute("loginUser.getUsLoginName()");
		
		//String usersName = request.getParameter(str);// 接收用户名
		//3.
		//users.setUsLoginName(str);
		//4.
		UsersDao usersDao = new UsersDao();
		Users temp = usersDao.selectById(users);
		
		request.setAttribute("users", temp);
		//5.
		if(temp != null){
			request.getRequestDispatcher("userInfo.jsp").forward(request, response);
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
