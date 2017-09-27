package com.flower.dao;

import com.flower.entity.Manager;

import java.sql.*;

/**
 * manager的dao层
 * @author zch
 *
 */

public class ManagerDao extends BaseDao{
	/**
	 * 增加管理员
	 * @param manager 管理员
	 * @return 受影响的行数
	 */
	public int insert(Manager manager){
		int rows=-1;
		openCon();//打开连接，调用父类的方法
		String sql="insert into tb_manager (loginname,pwd) values (?,?)";
		try {
			pst=con.prepareStatement(sql);
			pst.setString(1, manager.getLoginName());
			pst.setString(2, manager.getPwd());
			rows=pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			closeAll();
		}
		return rows;
	}
	/**
	 * 删除管理员
	 * @param manager 管理员
	 * @return 受影响的行数
	 */
	public int delete(Manager manager){
		int rows=-1;
		openCon();//打开连接，调用父类的方法
		String sql="delete from tb_manager where loginName=?";
		try {
			pst=con.prepareStatement(sql);
			pst.setString(1, manager.getLoginName());
			rows=pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			closeAll();
		}
		return rows;
	}
	/**
	 * 修改管理员密码
	 * @param manager 管理员
	 * @return 受影响的行数
	 */
	public int update(Manager manager){
		int rows = -1;
		openCon();
		String sql="update tb_manager set pwd=? where loginname=?";
		try {
			pst=con.prepareStatement(sql);
			pst.setString(1, manager.getPwd());
			pst.setString(2, manager.getLoginName());
			rows=pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			closeAll();
		}		
		return rows;
	}
	/**
	 * 查询管理员
	 * @param manager 要查询的管理员
	 * @return 返回查询到的管理员
	 */
	public Manager selectById(Manager manager){
		Manager temp = null;
		openCon();
		String sql="select * from tb_manager where loginname=?";
		try {
			pst=con.prepareStatement(sql);
			pst.setString(1, manager.getLoginName());
			rs=pst.executeQuery();
			if (rs.next()){
				temp = new Manager();
				temp.setLoginName(rs.getString("loginname"));
				temp.setPwd(rs.getString("pwd"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			closeAll();
		}
		return temp;
		
	} 
	/**
	 * 登录的方法
	 * @param manager 管理员
	 * @return 返回查询到的管理员
	 */
	public Manager seleteByLoginNameAndPwd(Manager manager){
		Manager temp = null;
		openCon();
		String sql="select * from tb_manager where loginname=? and pwd=?";
		try {
			pst=con.prepareStatement(sql);
			pst.setString(1, manager.getLoginName());
			pst.setString(2, manager.getPwd());
			rs=pst.executeQuery();//返回结果集
			while (rs.next()){
				temp = new Manager();
				temp.setLoginName(rs.getString("loginname"));
				temp.setPwd(rs.getString("pwd"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			closeAll();
		}
		return temp;
	}
}

