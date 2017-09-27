package com.flower.manServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flower.dao.FlowerDao;
import com.flower.dao.TypeDao;
import com.flower.entity.Flower;

public class DeleteFlowerServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public DeleteFlowerServlet() {
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
		PrintWriter out = response.getWriter();
		// 获取参数
		String thisId = request.getParameter("thisId");
		// System.out.println(thisId);

		//int typeId = Integer.parseInt(thisId);
		Flower flower = new Flower();
		flower.setFlNo(thisId);

		FlowerDao flowerDao = new FlowerDao();
		int row = flowerDao.delete(flower);
		if (row > 0) {
			out.println("<script>alert(\"删除成功\");</script>");
		} else {
			out.println("<script>alert(\"删除失败\");</script>");
		}

		response.sendRedirect("FindAllServlet");

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
