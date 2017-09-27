package com.flower.test;

import java.util.ArrayList;
import java.util.List;

import com.flower.dao.FlowerDao;
import com.flower.entity.Flower;

public class FlowerTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		FlowerDao flowerDao = new FlowerDao();
		List<Flower> list = new ArrayList<Flower>();
		list=flowerDao.selectAll();
		for(Flower m:list){

			System.out.print(m.getFlName());
			System.out.print("    ");
			System.out.print(m.getDescri());
			System.out.println();
		}

	}

}
