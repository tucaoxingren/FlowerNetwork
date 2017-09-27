package com.flower.manServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flower.dao.TypeDao;

public class DeleteTypeServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public DeleteTypeServlet() {
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
		PrintWriter out = response.getWriter();
		// 获取参数
		String thisId = request.getParameter("thisId");
		//System.out.println(thisId);
		//string转int
		int typeId = Integer.parseInt(thisId);
		//调dao层
		TypeDao typeDao = new TypeDao();
		int row = typeDao.delete(typeId);
		if(row>0){
			out.println("<script>alert(\"删除成功\");</script>"); 
		}else{
			out.println("<script>alert(\"删除失败\");</script>"); 
		}
		//跳转
		response.sendRedirect("FindType");
		
		
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
