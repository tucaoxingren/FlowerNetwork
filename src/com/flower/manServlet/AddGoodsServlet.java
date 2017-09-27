package com.flower.manServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flower.dao.FlowerDao;
import com.flower.dao.TypeDao;
import com.flower.entity.Flower;
import com.flower.entity.Type;

@SuppressWarnings("serial")
public class AddGoodsServlet extends HttpServlet {
	
	
	/**
	 * Constructor of the object.
	 */
	public AddGoodsServlet() {
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
		// 获取参数
		String goodNo = request.getParameter("good_no");// 产品编号
		String goodName = request.getParameter("good_name");// 产品名称
		String goodNum = request.getParameter("good_num");// 产品库存
		String goodPrice = request.getParameter("good_price");// 产品价格
		// 产品类型
		String goodType = request.getParameter("goodsType");
		// 产品图片
		String goodLogo = (String) request.getSession().getAttribute("file");
		


		String goodDescri = request.getParameter("good_descri");// 产品描述
		
		int num = Integer.parseInt(goodNum);
		float flPrice = Float.parseFloat(goodPrice);

		// 封装参数
		TypeDao typeDao = new TypeDao();
		Type type = new Type();
		type = typeDao.seleteByName1(goodType);
		
		Flower flower = new Flower();
		flower.setFlNo(goodNo);
		flower.setFlName(goodName);
		flower.setNum(num);
		flower.setFlPrice(flPrice);
		flower.setPic(goodLogo);
		flower.setRemark(goodDescri);
		flower.setType(type);
		flower.setRemark(" ");
		// 观察输出
		/*
		System.out.println("鲜花编号"+goodNo);
		System.out.println("图片路径"+goodLogo);
		System.out.println("鲜花类型"+goodType+"--"+flower.getType().getTpId());
		System.out.println("鲜花名称"+goodName);*/
		// 调dao层
		FlowerDao flowerDao = new FlowerDao();
		flowerDao.insert(flower);

		response.sendRedirect("FindAllGood");

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
