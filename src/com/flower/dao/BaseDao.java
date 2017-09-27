package com.flower.dao;

import java.sql.*;

/**
 * 将打开连接和关闭资源的方法放到父类中，以代码重用
 * @author zch
 *
 */
public class BaseDao {
	//三个属性
	protected Connection con;
	protected PreparedStatement pst;
	protected ResultSet rs;
	//两个方法
	/**
	 * 打开连接
	 */
	public void openCon(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://"+
					"localhost:3306/flower?characterEncoding=utf8","root","123456");
			//设置编码方式为UTF-8
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("找不到驱动");
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("无法打开数据库");
			e.printStackTrace();
		}
	}
	/**
	 * 关闭资源
	 */
	public void closeAll(){
		try {
			if(rs != null){//如果rs为null值，调属性方法会报空指针异常
				rs.close();
			}
			if(pst != null){
				pst.close();
			}
			if(con != null){
				con.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
