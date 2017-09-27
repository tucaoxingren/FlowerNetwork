package com.flower.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flower.dao.UsersDao;
import com.flower.entity.Users;

public class UpdatePwdServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UpdatePwdServlet() {
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
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		// 2.
		String oldPwd = request.getParameter("oldPwd");
		String newPwd = request.getParameter("newPwd");
		String rnewPwd = request.getParameter("rnewPwd");
		Users user = (Users) request.getSession().getAttribute("loginUser");
		String usersName = user.getUsLoginName();// 接收用户名
		String pwd = user.getPwd();
		// 3.比较两个新密码是否一致
		if(!newPwd.equals(rnewPwd)){//不一致
			request.setAttribute("error", "密码修改失败,两次输入密码不一致");
			request.getRequestDispatcher("userPwd.jsp").forward(request, response);
		}else{//一致
			// 4.比较旧密码与数据库内是否一致
			if(!pwd.equals(oldPwd)){//不一致
				request.setAttribute("error", "密码修改失败，密码错误");
				request.getRequestDispatcher("userPwd.jsp").forward(request, response);
			}else{//一致				
				// 封装参数
				Users users =new Users();
				users.setUsLoginName(usersName);
				users.setPwd(rnewPwd);
				//调 dao 层
				UsersDao usersDao = new UsersDao();
				int row=usersDao.updatePwd(users);
				//跳转
				if(row>0){
					user.setPwd(rnewPwd);
					request.getSession().setAttribute("loginUser", user);/*	
					request.setAttribute("error", "密码修改成功，请妥善保管");
					request.getRequestDispatcher("index.jsp").forward(request, response);*/
					out.println("<script>alert('密码修改成功，请妥善保管');location='login.jsp'</script>");
					return;
					
				}else{
					request.setAttribute("error", "密码修改失败");
					request.getRequestDispatcher("userPwd.jsp").forward(request, response);
				}
				
			}		
		}
		out.flush();
		out.close();
		
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
