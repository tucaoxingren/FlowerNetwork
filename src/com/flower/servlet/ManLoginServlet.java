package com.flower.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.flower.dao.ManagerDao;
import com.flower.entity.Manager;

public class ManLoginServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ManLoginServlet() {
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
		//PrintWriter out = response.getWriter();
		
		String manpwd=request.getParameter("manpwd");
		String man=request.getParameter("mannike");
		//
		Manager manager = new Manager();
		manager.setLoginName(man);
		manager.setPwd(manpwd);
		ManagerDao managerDao = new ManagerDao();
		Manager temp = new Manager();
		temp=managerDao.seleteByLoginNameAndPwd(manager);
		
		HttpSession session = request.getSession();
		// 存session
		session.setAttribute("loginMan", temp);
		
		if(temp==null){
			//request.setAttribute("error", "账号或密码错误，请重试");
			response.sendRedirect("manager/login.jsp");
			//request.getRequestDispatcher("/manager/login.jsp").forward(request, response);
		}else{
			response.sendRedirect("manager/index.jsp");
			//request.getRequestDispatcher("/manager/index.jsp").forward(request, response);
		}
		//out.flush();
		//out.close();
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
