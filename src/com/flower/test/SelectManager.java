package com.flower.test;

import java.sql.*;

public class SelectManager {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		//加载驱动
		Class.forName("com.mysql.jdbc.Driver");
		//连接数据库
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flower","root","123456");
		//写sql
		String sql="select * from tb_manager";
		//创建PreparedStatement对象
		PreparedStatement pst=con.prepareStatement(sql);
		//返回结果集
		ResultSet rs=pst.executeQuery();
		//处理结果
		while(rs.next()){
			System.out.println(rs.getString("loginname")+":"+rs.getString("pwd"));
		}
		//关闭资源
		pst.close();
		con.close();
	}

}
