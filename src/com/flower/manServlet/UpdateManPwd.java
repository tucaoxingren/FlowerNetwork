package com.flower.manServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flower.dao.ManagerDao;
import com.flower.dao.UsersDao;
import com.flower.entity.Manager;
import com.flower.entity.Users;

public class UpdateManPwd extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UpdateManPwd() {
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
		//PrintWriter out = response.getWriter();
		String oldpwd = request.getParameter("oldpwd");
		String newpwd = request.getParameter("newpwd");
		String rnewpwd = request.getParameter("rnewpwd");
		
		if(request.getSession().getAttribute("loginMan") != null){
			Manager manager = new Manager();
			manager = (Manager) request.getSession().getAttribute("loginMan");
			//System.out.println(manager.getLoginName());
			//System.out.println(manager.getPwd());
			manager.setPwd(oldpwd);
			ManagerDao managerDao = new ManagerDao();
			Manager manager2 = new Manager();
			manager2 = managerDao.seleteByLoginNameAndPwd(manager);
			if(manager2 != null){
				if(newpwd.equals(rnewpwd)){
					manager2.setPwd(newpwd);
					int row = managerDao.update(manager2);
					if(row>0){
						response.sendRedirect("manager/login.jsp");
					}
				}
			}
		} else{
			response.sendRedirect("manager/mnPwd.jsp");
		}
		
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
