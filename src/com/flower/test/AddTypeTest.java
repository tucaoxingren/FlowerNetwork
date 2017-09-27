package com.flower.test;

import java.util.List;

import com.flower.dao.TypeDao;
import com.flower.entity.Type;

public class AddTypeTest {
	public static void main(String[] args) {
		/*Type type = new Type();
		type.setTpId(9);
		type.setTpName("123");
		type.setRemark("4522");*/
		
		TypeDao typeDao = new TypeDao();
		//typeDao.insert(type);
		
		List<Type> list = typeDao.seleteAll();
		int i = list.size();
		System.out.println(i);
	}

}
