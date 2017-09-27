package com.flower.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UpdateManagerTest {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		//加载mysql驱动
		Class.forName("com.mysql.jdbc.Driver");
		//获取连接
		Connection con=DriverManager.getConnection("jdbc:mysql://"+
		"localhost:3306/flower","root","123456");
		//写sql语句
		String sql="update tb_manager set loginname=? where loginname=?";
		//创建prepareStatement对象
		PreparedStatement pst=con.prepareStatement(sql);
		pst.setString(1, "admin006");//为通配符 ？ 赋值
		pst.setString(2, "admin007");
		//执行并返回结果
		int rows=pst.executeUpdate();
		//处理结果 
		System.out.println("受影响行数："+rows+"行");
		//关闭资源
		pst.close();
		con.close();
	}
}
