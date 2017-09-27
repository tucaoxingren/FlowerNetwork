package com.flower.test;

import com.flower.dao.FlowerDao;
import com.flower.entity.Flower;

public class FlowerDaoTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		FlowerDao flowerDao= new FlowerDao();
		Flower flower = new Flower();
		Flower flower2 = new Flower();
		flower.setFlNo("aq52001");
		//flower2=flowerDao.selectById(flower);
		System.out.println(flower2.getFlNo());

	}

}
