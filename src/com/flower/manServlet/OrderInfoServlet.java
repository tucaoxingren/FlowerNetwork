package com.flower.manServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flower.dao.FlowerDao;
import com.flower.dao.OdersItemDao;
import com.flower.dao.OrdersDao;
import com.flower.dao.TypeDao;
import com.flower.entity.Flower;
import com.flower.entity.OrderItem;
import com.flower.entity.Orders;
import com.flower.entity.Type;
import com.flower.util.DateForm;

/**
 * 获取订单详情
 * 
 * @author admin
 * 
 */
public class OrderInfoServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public OrderInfoServlet() {
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
		// PrintWriter out = response.getWriter();
		// String str = request.getParameter("keywords");//获取要查询的关键字
		String ordNo = request.getParameter("thisId");// 获取要查询的关键字
		//System.out.println(ordNo);
		// 根据订单编号查找订单详情
		OdersItemDao odersItemDao = new OdersItemDao();
		Orders orders = new Orders();
		orders.setOrdNo(ordNo);
		List<OrderItem> temp = odersItemDao.selectByOrdersNo(orders);
		List<Flower> flowerList = new ArrayList<Flower>();
		
		OrdersDao ordersDao = new OrdersDao();
		orders = ordersDao.selectById(orders);
		
		for(OrderItem oo:temp){
			Flower flower = new Flower();
			Flower flNo = oo.getFlower();
			flower.setFlNo(flNo.getFlNo());
			FlowerDao flowerDao = new FlowerDao();
			Flower flower2 = new Flower();
			flower2 = flowerDao.selectById(flower);
			flowerList.add(flower2);
		}
		// 转换时间格式
		String str;
		if(ordNo.length() < 14){
			str = ordNo;
			
		}else{
			DateForm DF = new DateForm();
			str = DF.getHMM(ordNo);
		}
		
		if (temp.size() != 0) {
			request.setAttribute("orders", orders);
			request.setAttribute("date", str);
			request.setAttribute("ordInfo", temp);
			request.setAttribute("flowers", flowerList);
			// response.sendRedirect("manager/typeList.jsp");
			request.getRequestDispatcher("manager/orderInfo.jsp").forward(
					request, response);
		} else {
			response.sendRedirect("FindAllOrder");
		}
	
		/*
		 * out.flush(); out.close();
		 */
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
