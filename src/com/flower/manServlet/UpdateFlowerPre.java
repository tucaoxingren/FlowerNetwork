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

public class UpdateFlowerPre extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UpdateFlowerPre() {
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
		
		String flNo = request.getParameter("flID");
		// 产品图片
		//String goodLogo = (String) request.getSession().getAttribute("file");
		//System.out.println(flNo);

		TypeDao typeDao = new TypeDao();
		List<Type> tpList = typeDao.seleteAll();
		
		if (request.getSession().getAttribute("loginMan") != null) {
			request.getSession().setAttribute("types", tpList);
			if(flNo != null)
				request.getSession().setAttribute("fl_no", flNo);
			//request.getSession().setAttribute("file", " ");
			/*String str = (String) request.getSession().getAttribute("fl_no");
			request.getSession().setAttribute("fl_no", str);*/
			
			request.getRequestDispatcher("manager/updateGoods.jsp").forward(
					request, response);
		} else {
			response.sendRedirect("manager/login.jsp");
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
