package com.flower.test;

import java.util.List;

import com.flower.dao.UsersDao;
import com.flower.entity.Users;

public class SelectAllUsersTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		UsersDao usersDao = new UsersDao();
		List<Users> list = usersDao.selectAllUsers();
		for(Users uu:list){
			System.out.println(uu.getUsLoginName());
		}

	}

}
