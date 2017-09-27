package com.flower.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flower.entity.Flower;
import com.flower.entity.OrderItem;
import com.flower.entity.Orders;
import com.flower.dao.*;

/*
 * 根据订单编号查找订单详情
 */
public class SelectByOrdersNo extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public SelectByOrdersNo() {
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
		//获取参数
		String ordNo = request.getParameter("ordNo");
		//封装参数
		Orders orders = new Orders();
		orders.setOrdNo(ordNo);
		// 调 dao
		OdersItemDao OrdersItemDao = new OdersItemDao();
		List<OrderItem> ordList = OrdersItemDao.selectByOrdersNo(orders);
		
		OrdersDao ordersDao = new OrdersDao();
		orders=ordersDao.selectById(orders);
		
		for(int i=0;i<ordList.size();i++){
			
			OrderItem orderItem = ordList.get(0);
			Flower flower = orderItem.getFlower();
			FlowerDao flowerDao = new FlowerDao();
			flower=flowerDao.selectById(flower);
			orderItem.setFlower(flower);
			ordList.remove(0);
			ordList.add(orderItem);
		}
		//把订单和订单详情存入request中
		request.setAttribute("oiList", ordList);
		request.setAttribute("orders", orders);
		//跳转
		request.getRequestDispatcher("orderInfo.jsp").forward(request, response);
		/*
		OrdersDao ordersDao = new OrdersDao();
		orders=ordersDao.selectById(orders);*/
		
		/*
		 * request.setAttribute("orederList", orederList);
		request.getRequestDispatcher("orderLists.jsp").forward(request, response);*/
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
