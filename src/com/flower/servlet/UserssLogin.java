package com.flower.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flower.dao.UsersDao;
import com.flower.entity.Users;

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
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		doPost(request,response);

		/*response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();*/
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
		//1.设置编码方式
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("type/html;charset=UTF-8");
		
		//2.接收参数（从register.jsp中接收数据）
		Users users = new Users();
		String usersName=request.getParameter("usersName");//接收用户名
		String pwd=request.getParameter("usersPassword");
		String phone=request.getParameter("usersPhone");
		//判断用户名是否为空
		if(usersName==null || usersName.equals("")){
			request.setAttribute("error", "注册失败");
			request.getRequestDispatcher("register.jsp").forward(request,response);
			return;
		}
		
		//3. 封装参数
		users.setUsLoginName(usersName);
		users.setPwd(pwd);
		users.setPhone(phone);
		
		//4. 调dao层
		UsersDao usersDao = new UsersDao();
		int row = usersDao.insert(users);
		
		//5. 跳转页面
		if (row>0){
			//如果大于0，跳转到登陆页面，使用的是转发
			request.getRequestDispatcher("login.jsp").forward(request, response);
			//使用的时重定向
			//response.sendRedirect("login.jsp");
		}
		else{
			request.setAttribute("error", "注册失败");
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}

		//response.setContentType("text/html");
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
