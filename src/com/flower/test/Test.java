package com.flower.test;

import com.flower.entity.Orders;
/**
 * 测试
 * @author zch
 *
 */
public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Orders ord = new Orders();
		ord.setAddress("西南林业大学");//设置收货地址
		System.out.println(ord.getAddress());//打印
		/*int a = 0;
		System.out.println(a);*/
	}
}
