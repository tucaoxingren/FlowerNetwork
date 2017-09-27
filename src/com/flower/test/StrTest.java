package com.flower.test;

import com.flower.dao.UsersDao;
import com.flower.entity.Users;

public class StrTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		UsersDao usersDao = new UsersDao();
		Users users = new Users();
		users.setUsLoginName("zchzch2");
		users.setPwd("123456");
		usersDao.insert(users);

	}

}
