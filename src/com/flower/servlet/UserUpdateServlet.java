package com.flower.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flower.dao.UsersDao;
import com.flower.entity.Users;

public class UserUpdateServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UserUpdateServlet() {
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
		PrintWriter out = response.getWriter();

		// 2.接收参数（从register.jsp中接收数据）
		Users user = (Users) request.getSession().getAttribute("loginUser");
		String usersName = user.getUsLoginName();// 接收用户名
		String pwd = user.getPwd();
		//String pwd = request.getParameter("newPwd");
		String phone = request.getParameter("newPhone");
		String email = request.getParameter("newEmail");
		String nike = request.getParameter("newNike");
		
		// 3.封装参数
		Users users = new Users();
		users.setUsLoginName(usersName);
		users.setPwd(pwd);
		users.setPhone(phone);
		users.setEmail(email);
		users.setNickName(nike);
		
		UsersDao usersDao = new UsersDao();
		int row = usersDao.update(users);
		//"<script>alert('您还未登录，请登录');location='login.jsp'</script>"
		if(row>0){
			request.getSession().setAttribute("loginUser", users);
			request.getRequestDispatcher("userInfo.jsp").forward(request, response);
			/*out.println("<script>alert('个人信息修改成功');location='userInfo.jsp'</script>");
			return;*/
			
		}else{
			request.getRequestDispatcher("userInfoUpdate.jsp").forward(request, response);
			/*out.println("<script>alert('个人信息修改失败');location='userInfoUpdate.jsp'</script>");
			return;*/
		}
		/*if(row>0){
			out.println("<script>alert('账户修改成功');location='userInfo.jsp'</script>");
			return;
			
		}else{
			out.println("<script>alert('账户修改失败');location='userInfoUpdate.jsp'</script>");
			//return;
		}*/
		out.flush();
		out.close();
		/*response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the POST method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();*/
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
