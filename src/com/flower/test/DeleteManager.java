package com.flower.test;

import java.sql.*;

public class DeleteManager {

	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			System.out.println("找不到驱动程序类 ，加载驱动失败！");   
			e1.printStackTrace();
		}
		Connection con=DriverManager.getConnection("jdbc:mysql://"+
				"localhost:3306/flower","root","123456");
		String sql="delete from tb_manager where loginname=?";
		PreparedStatement pst=con.prepareStatement(sql);
		pst.setString(1, "admin006");//为通配符 ？ 赋值
		int rows;
		try {
			rows = pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("无法删除，数据可能不存在");
			rows = 0;
			e.printStackTrace();
		}
		System.out.println("受影响行数："+rows+"行");
		pst.close();
		con.close();

	}

}
