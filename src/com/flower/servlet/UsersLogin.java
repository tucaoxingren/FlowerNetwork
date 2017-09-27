package com.flower.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.flower.dao.FlowerDao;
import com.flower.dao.UsersDao;
import com.flower.entity.Flower;
import com.flower.entity.Users;

public class UsersLogin extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UsersLogin() {
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

		// 2.接收参数（从login.jsp中接收数据）
		Users users = new Users();
		String usersName = request.getParameter("user_name");// 接收用户名
		String pwd = request.getParameter("password");

		// 3. 封装参数
		users.setUsLoginName(usersName);
		users.setPwd(pwd);

		// 4. 调dao层
		UsersDao usersDao = new UsersDao();
		Users temp = usersDao.selectByLoginNameAndPwd(users);

		// 获取鲜花 开始
		FlowerDao flowerDaoo = new FlowerDao();
		List<Flower> flower = flowerDaoo.selectAll();
		request.setAttribute("flowers", flower);
		// 获取鲜花 结束

		// 5. 跳转页面
		String un = "可使用已注册的用户名或手机号登录";
		String pd = "6-20个大小写英文字母、符号或数字";
		if (usersName.equals(un)) {//
			request.setAttribute("error", "账号不可为空，请重试");
			request.getRequestDispatcher("login.jsp")
					.forward(request, response);
		} else if (pwd.equals(pd)) {
			request.setAttribute("error", "密码不可为空，请重试");
			request.getRequestDispatcher("login.jsp")
					.forward(request, response);
		}

		if (temp == null) {
			request.setAttribute("error", "账号或密码错误，请重试");
			request.getRequestDispatcher("login.jsp")
					.forward(request, response);
		} else {
			// 如果不为空，跳转到首页，使用的是转发
			HttpSession session = request.getSession();
			// 存session
			session.setAttribute("loginUser", temp);
			request.getRequestDispatcher("index.jsp")
					.forward(request, response);
			// request.getRequestDispatcher("userInfo.jsp").forward(request,
			// response);
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
