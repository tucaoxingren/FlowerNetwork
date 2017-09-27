package com.flower.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flower.dao.CollectionDao;
import com.flower.dao.FlowerDao;
import com.flower.entity.Collection;
import com.flower.entity.Flower;
import com.flower.entity.Users;
import com.flower.util.DateUtil;

public class AddCollectionServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddCollectionServlet() {
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
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("type/html;charset=UTF-8");
		//PrintWriter out = response.getWriter();
		// 2.接收参数
		String date = DateUtil.getRandom();//获取时间戳，作为收藏编号
		String flNo=request.getParameter("flNo");
		Flower flower = new Flower();
		flower.setFlNo(flNo);
		//接收用户名
		Users temp = (Users) request.getSession().getAttribute("loginUser");
		// 3.封装参数
		Collection collection = new Collection();
		collection.setClNo(date);
		collection.setFlower(flower);
		collection.setUsers(temp);				
		// 4.调dao层
		CollectionDao collectionDao = new CollectionDao();
		int row = collectionDao.insert(collection);
		//request.setAttribute("error", "添加收藏成功");
		//out.println("<script>alert('添加收藏成功');window.history.back()'</script>");
		//return;
		//request.hhistory.go(-1);
		/*
		if(row>0){
			//request.setAttribute("error", "添加收藏成功");
			//out.print("<script>alert('修改成功');" + this.getGoBack()+" </script>");
			out.println("<script>alert('添加收藏成功')</script>");
			//request.getRequestDispatcher("ListAllServlet").forward(request, response);
			return;
		}else{
			out.println("<script>alert('添加收藏失败')</script>");
		}*/
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
