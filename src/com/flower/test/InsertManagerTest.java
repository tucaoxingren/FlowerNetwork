package com.flower.test;

import java.sql.*;
/**
 * 增加管理员
 * JDBC
 * @author zch
 *
 */
public class InsertManagerTest {
	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		//加载mysql驱动
		Class.forName("com.mysql.jdbc.Driver");
		//获取连接
		Connection con=DriverManager.getConnection("jdbc:mysql://"+
		"localhost:3306/flower","root","123456");
		//写sql语句
		String sql="insert into tb_manager (loginname,pwd) values(?,?)";
		//创建prepareStatement对象
		PreparedStatement pst=con.prepareStatement(sql);
		pst.setString(1, "admin005");//为通配符 ？ 赋值
		pst.setString(2, "123456");
		//执行并返回结果
		int rows=pst.executeUpdate();
		//处理结果 
		System.out.println("受影响行数："+rows+"行");
		//关闭资源
		pst.close();
		con.close();
	}

}
