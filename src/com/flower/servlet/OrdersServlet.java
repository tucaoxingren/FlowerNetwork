package com.flower.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flower.dao.OdersItemDao;
import com.flower.dao.OrdersDao;
import com.flower.entity.Flower;
import com.flower.entity.OrderItem;
import com.flower.entity.Orders;
import com.flower.entity.Users;
import com.flower.util.DateUtil;

/**
 * 增加订单 servlet
 * 
 * @author admin
 * 
 */
public class OrdersServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public OrdersServlet() {
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
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		// 2.接收参数
		String ordName = request.getParameter("ordName");
		String ordPhone = request.getParameter("ordPhone");
		String ordAddress = request.getParameter("ordAddress");
		String date = DateUtil.getRandom();
		// 获取到购物车cart
		List<Flower> list=(List<Flower>) request.getSession().getAttribute("cart");
		//从session中获取用户loginUser  总价total
		Users user = (Users) request.getSession().getAttribute("loginUser");
		float total = (Float) request.getSession().getAttribute("total");
		// 3.封装参数
		if(user != null && list != null){
			Orders orders = new Orders();
			orders.setOrdName(ordName);
			orders.setPhone(ordPhone);
			orders.setAddress(ordAddress);	//收货地址
			orders.setUsers(user);			//用户名
			orders.setOrdPrice(total);		//订单总价
			orders.setOrdNo(date);			//订单编号
			orders.setOrdData(new Date());	//订单日期时间
			
			// 4.调 dao层
			OrdersDao ordersDao = new OrdersDao();
			int i = ordersDao.insert(orders);
			// 5.调转
			request.getSession().setAttribute("orders", orders);
			if(i>0){
				//移除购物车
				request.getSession().removeAttribute("cart");
				OrderItem orderItem = new OrderItem();
				OdersItemDao ordersItemDao = new OdersItemDao();
				for(Flower f:list){
					orderItem.setFlower(f);
					orderItem.setOiCount(f.getFlCount());
					orderItem.setOrders(orders);
					ordersItemDao.insert(orderItem);
				}
				

				out.println("<script>alert('创建订单成功');location='okOrder.jsp'</script>");
			}else{
				out.println("<script>alert('创建订单失败');location='checkOrder.jsp'</script>");
			}
		}
		
		

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
