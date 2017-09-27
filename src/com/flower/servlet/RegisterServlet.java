package com.flower.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flower.dao.UsersDao;
import com.flower.entity.Users;

@SuppressWarnings("serial")
public class RegisterServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public RegisterServlet() {
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
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);

		/*
		 * response.setContentType("text/html"); PrintWriter out =
		 * response.getWriter(); out.println(
		 * "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		 * out.println("<HTML>");
		 * out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		 * out.println("  <BODY>"); out.print("    This is ");
		 * out.print(this.getClass()); out.println(", using the GET method");
		 * out.println("  </BODY>"); out.println("</HTML>"); out.flush();
		 * out.close();
		 */
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

		// 2.接收参数（从register.jsp中接收数据）
		Users users = new Users();
		String usersName = request.getParameter("usersName");// 接收用户名
		String pwd = request.getParameter("usersPassword");//
		String repwd = request.getParameter("password_confirm");
		String phone = request.getParameter("usersPhone");
		// 判断用户名是否为空
		if (usersName == null || usersName.equals("")) {
			request.setAttribute("error", "用户名不可为空");
			request.getRequestDispatcher("register.jsp").forward(request,response);
			return;
		} else {
			// 判断用户名长度是否符合要求
			String us = usersName;
			if ((us.length() < 3 && us.length() >= 1) || us.length() > 15) {
				request.setAttribute("error", "用户名不符合要求");
				request.getRequestDispatcher("register.jsp").forward(request,response);
				return;
			} else if (nameStr(us)) {// 判断字符是否符合要求
				request.setAttribute("error", "用户名不符合要求");
				request.getRequestDispatcher("register.jsp").forward(request,response);
				return;
			}
		}
		// 判断密码是否为空
		if (pwd == null || pwd.equals("")) {
			request.setAttribute("error", "密码不可为空");
			request.getRequestDispatcher("register.jsp").forward(request,response);
			return;
		} else {
			// 判断密码长度是否符合要求
			if ((pwd.length() < 6 && pwd.length() >= 1) || pwd.length() > 20) {
				request.setAttribute("error", "密码不符合要求");
				request.getRequestDispatcher("register.jsp").forward(request,response);
				return;
			}
		}
		// 判断确认密码是否一致
		if (!repwd.equals(pwd)) {
			request.setAttribute("error", "确认密码不可为空");
			request.getRequestDispatcher("register.jsp").forward(request,response);
			return;
		}

		// 3. 封装参数
		users.setUsLoginName(usersName);
		users.setPwd(pwd);
		users.setPhone(phone);

		// 4. 调dao层
		UsersDao usersDao = new UsersDao();
		int row = usersDao.insert(users);

		// 5. 跳转页面
		if (row > 0) {
			// 如果大于0，跳转到登陆页面，使用的是转发
			request.getRequestDispatcher("login.jsp").forward(request, response);
			// 使用的时重定向
			// response.sendRedirect("login.jsp");
		} else if(row == -2){
			request.setAttribute("error", "用户名已被注册");
			request.getRequestDispatcher("register.jsp").forward(request,response);
			
		}
		else {
			request.setAttribute("error", "注册失败");
			request.getRequestDispatcher("register.jsp").forward(request,response);
		}

		// response.setContentType("text/html");
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

	/**
	 * 如果传入的字符 符合用户名要求返回false 反之，返回true 用户名要求： 大小写字母数字和'-'
	 * 
	 * @param String
	 * @return true or false
	 */
	public boolean nameStr(String str) {
		byte[] gc = str.getBytes();
		for (int i = 0; i < str.length(); i++) {
			int temp = (int) gc[i];
			if (temp >= 0 && temp <= 44)
				return true;
			else if (temp >= 46 && temp <= 47)
				return true;
			else if (temp >= 58 && temp <= 64)
				return true;
			else if (temp >= 91 && temp <= 96)
				return true;
			else if (temp >= 123)
				return true;

		}
		return false;

	}

}
