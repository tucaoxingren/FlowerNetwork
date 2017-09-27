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
import com.flower.entity.Type;

/**
 * 修改鲜花
 * 
 * @author admin
 * 
 */
public class UpdateFlower extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UpdateFlower() {
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
		// 产品描述
		String goodDescri = request.getParameter("good_descri");


		// 封装参数
		TypeDao typeDao = new TypeDao();
		Type type = new Type();
		type = typeDao.seleteByName1(goodType);

		FlowerDao flowerDao = new FlowerDao();
		Flower temp = new Flower();
		Flower flower2 = new Flower();
		flower2.setFlNo(goodNo);
		temp = flowerDao.selectById(flower2);
		Flower flower = new Flower();
		// 产品编号
		if (goodNo == null)
			flower.setFlNo(temp.getFlNo());
		else
			flower.setFlNo(goodNo);
		// 产品名称
		if (goodName == null || goodName.equals(""))
			flower.setFlName(temp.getFlName());
		else
			flower.setFlName(goodName);
		// 产品库存
		if (goodNum == null || goodNum.equals(" ")){
			int num = Integer.parseInt(goodNum);
			flower.setNum(num);	
			System.out.println("库存：num" + num);
			
			}		
		else
			flower.setNum(temp.getNum());
		// 产品价格
		if (goodPrice == null  || goodPrice.equals(" ")){
			float flPrice = Float.parseFloat(goodPrice);
			flower.setFlPrice(flPrice);
			System.out.println("价格：flPrice" + flPrice);
			}
		else
			flower.setFlPrice(temp.getFlPrice());
		// 图片路径
		if (goodLogo == null || goodLogo.equals(" "))
			flower.setPic(temp.getPic());
		else
			flower.setPic(goodLogo);
		// 鲜花描述
		if (goodDescri == null)
			if(temp.getDescri() == null)
				flower.setDescri(" ");
			else
				flower.setDescri(temp.getDescri());
		else
			flower.setRemark(goodDescri);
		// 鲜花类型
		if (type == null)
			flower.setType(temp.getType());
		else
			flower.setType(type);
		//remark 为空
		flower.setRemark(" ");

		// 观察输出

		System.out.println("鲜花编号goodNo" + goodNo);
		System.out.println("图片路径goodLogo" + goodLogo);
		
		System.out.println("鲜花类型goodType" + goodType + "--"
				+ flower.getType().getTpId());
		System.out.println("鲜花名称goodName" + goodName);

		// 调dao层
		FlowerDao flowerDao2 = new FlowerDao();
		flowerDao2.update(flower);

		response.sendRedirect("FindAllGood");
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
