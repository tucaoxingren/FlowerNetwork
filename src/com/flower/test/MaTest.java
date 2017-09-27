package com.flower.test;

import com.flower.dao.TypeDao;
import com.flower.entity.Type;

public class MaTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Type manager = new Type();
		manager.setTpId(1);
		manager.setTpName("爱情鲜花");
		manager.setRemark(null);
		TypeDao md = new TypeDao();
		manager=md.selectById(manager);
		System.out.println(manager.getTpName());
		System.out.println(manager.getTpId());

	}

}
