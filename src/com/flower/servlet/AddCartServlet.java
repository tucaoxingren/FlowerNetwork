package com.flower.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.flower.dao.FlowerDao;
import com.flower.entity.Flower;
/**
 * 添加购物车
 * @author admin
 *
 */
public class AddCartServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddCartServlet() {
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
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 1.设置编码方式
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		//判断用户是否登录
		if(request.getSession().getAttribute("loginUser")==null){
			out.println("<script>alert('您还未登录，请登录');location='login.jsp'</script>");
			return;
		}
		
		// 2.接收参数
		String flNo=request.getParameter("flNo");//
		//String priceTotal=request.getParameter("priceTotal");//订单总价
		//String priceTotal=request.getParameter("priceTotal");//单个商品总价
		//String selectedTotal=request.getParameter("selectedTotal");//所有商品个数
		
		// 3.封装参数
		Flower flower = new Flower();
		flower.setFlNo(flNo);
		
		// 4.调dao层
		FlowerDao flowerDao = new FlowerDao();
		Flower temp = flowerDao.selectById(flower);
		
		// 5.判断跳转
		HttpSession session = request.getSession();
		List<Flower> list = (List<Flower>) session.getAttribute("cart");
		//List<String> listStr = (List<String>) session.getAttribute("cartStr");
		if(list == null){//判断session是否有购物车，没有购物车，新建一个
			list = new ArrayList<Flower>();
			
		}
		//如果session有购物车，则把商品添加到购物车中
		//定义一个flag true代表没有添加过该商品，数量没有改变
		boolean flag = true;
		for(int i=0;i<list.size();i++){
			Flower f=list.get(i);
			//判断是否加入过该商品
			if (f.getFlNo().equals(temp.getFlNo())){
				list.remove(i);
				f.setFlCount(f.getFlCount()+1);
				//priceTotal +=1;
				list.add(f);
				flag = false;
				break;
				
			}
		}
		if(flag){
			list.add(temp);
		}
		//计算购物车总价
		float total=0;
		for(Flower f1:list){
			total += f1.getFlPrice()*f1.getFlCount();
		}
		int totalnum=0;
		for(Flower f1:list){
			totalnum += f1.getFlCount();
		}
		//把购物车和总价传入session中
		session.setAttribute("cart", list);//购物车
		session.setAttribute("total", total);//总价
		session.setAttribute("totalnum", totalnum);//总数
		/*
		float temp = (Float) session.getAttribute("total");
		session.setAttribute("priceTotal", priceTotal);
		session.setAttribute("selectedTotal", selectedTotal);*/
		
		//request.getRequestDispatcher("busOrder.jsp").forward(request, response);
		response.sendRedirect("busOrder.jsp");

		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
