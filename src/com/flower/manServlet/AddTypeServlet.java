package com.flower.manServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flower.dao.TypeDao;
import com.flower.entity.Type;

public class AddTypeServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddTypeServlet() {
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
		String typeName = request.getParameter("type_name");
		String typeRemark = request.getParameter("type_remark");
		
		TypeDao typeDao = new TypeDao();
		List<Type> list = typeDao.seleteAll();
		int typeId = list.size()+1;//设置编号
		Type type = new Type();
		type.setTpId(typeId);
		type.setTpName(typeName);
		type.setRemark(typeRemark);
		
		
		typeDao.insert(type);
		
		response.sendRedirect("FindAllServlet");
		
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
