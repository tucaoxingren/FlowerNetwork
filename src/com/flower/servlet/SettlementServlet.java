package com.flower.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SettlementServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public SettlementServlet() {
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
		// 2..
		HttpSession session = request.getSession();
		//String subTotal=(String) session.getAttribute("subTotal");
		//var span = document.getElementById('subtotal').innerHTML;
		/*
		out.println("<script>HttpSession session = request.getSession();"
		+"session.setAttribute('subTotal', subTotal);location='busOrder.jsp'</script>");*/
		//String subTotal=(String) request.getAttribute("subtotal");//订单总价
		//String priceTotal=request.getParameter("priceTotal");//单个商品总价
		//String selectedTotal=request.getParameter("selectedTotal");//所有商品个数
		
		//String selectedTotal=(String) request.getAttribute("selectedTotal");//所有商品个数
		String selectedTotal=(String) session.getAttribute("selectedTotal");
		// 3.
		
		if(selectedTotal == null)
			request.getRequestDispatcher("busOrder.jsp").forward(request, response);
		else
			request.getRequestDispatcher("checkOrder.jsp").forward(request, response);
		
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
