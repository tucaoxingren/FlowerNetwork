package com.flower.test;

import java.util.List;

import com.flower.dao.FlowerDao;
import com.flower.entity.Flower;
import com.flower.entity.Type;

public class FlowerSTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String likeName="不";
		FlowerDao flowerDao = new FlowerDao();
		List<Flower> flowerList = flowerDao.selectByName(likeName);
		//List<Flower> flowerList = flowerDao.selectAll();
		System.out.println("----selectByName----");
		Type types = new Type();
		types.setTpId(1); 
		List<Flower> bynamelist = flowerDao.selectByFlName(types);
		
		for(Flower ff:flowerList){
			System.out.println(ff.getFlName());
		}
		System.out.println("----selectByFlName----");
		for(Flower ff:bynamelist){
			System.out.println(ff.getFlName());
		}
		
		String temp = "不";
		String str = "%"+temp+"%";
		System.out.println(str);

	}

}
