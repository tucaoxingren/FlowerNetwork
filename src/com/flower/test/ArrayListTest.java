package com.flower.test;

import java.util.ArrayList;
import java.util.List;

import com.flower.dao.TypeDao;
import com.flower.entity.Manager;
import com.flower.entity.Type;

/**
 * ArrayList 测试
 * @author admin
 *
 */

public class ArrayListTest {
	public static void main(String[] args) {
		Manager manager1=new Manager();
		manager1.setLoginName("admin");
		Manager manager2=new Manager();
		manager2.setLoginName("admin2");
		Manager manager3=new Manager();
		manager3.setLoginName("admin3");
		//泛型  说明List只能存储Manager对象
		//父类类型，之类对象，有父子关系
		/*List<Manager> list=new ArrayList<Manager>();
		//将对象加入到list中
		list.add(manager1);
		list.add(manager2);
		list.add(manager3);*/
		List<Type> list=new ArrayList<Type>();
		TypeDao tp=new TypeDao();
		list=tp.seleteAll();
		System.out.println(list.size());
		//加强for循环  foreach循环
		//循环输出list中的对象
		//list 是存储容器
		/*
		for(Manager m:list){
			System.out.println(m.getLoginName());
			
		}*/
		for(Type m:list){
			System.out.println(m.getTpName());
			
		}
	}

}
