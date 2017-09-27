package com.flower.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.flower.entity.Users;

/**
 * Users dao
 * 
 * @author zch
 * 
 */
public class UsersDao extends BaseDao {
	/**
	 * 增加用户
	 * 
	 * @param users
	 * @return
	 */
	public int insert(Users users) {
		int rows = -2;
		if (selectById(users)==null) {//userName(users)
			openCon();
			String sql = "insert into tb_users (us_loginname,pwd,phone) values(?,?,?)";
			try {
				pst = con.prepareStatement(sql);
				pst.setString(1, users.getUsLoginName());
				pst.setString(2, users.getPwd());
				pst.setString(3, users.getPhone());
				rows = pst.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				closeAll();
			}
		}
		return rows;
	}
	/**
	 * 修改用户
	 * 
	 * @param users
	 * @return
	 */
	public int update(Users users) {
		int rows = -1;
		openCon();
		String sql = "update tb_users set pwd=?,phone=?,nickname=?,email=? where us_loginname=?";
		//String sql = "update tb_users set phone=?,nickname=?,email=? where us_loginname=?";
		try {
			pst = con.prepareStatement(sql);
			pst.setString(1, users.getPwd());
			pst.setString(2, users.getPhone());
			pst.setString(3, users.getNickName());
			pst.setString(4, users.getEmail());
			pst.setString(5, users.getUsLoginName());
			rows = pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return rows;
	}
	/**
	 * 修改用户密码
	 * @param users
	 * @return
	 */
	public int updatePwd(Users users) {
		int rows=-1;
		openCon();
		String sql="update tb_users set pwd=? where us_loginname=?";
		try {
			pst=con.prepareStatement(sql);
			pst.setString(1, users.getPwd());
			pst.setString(2, users.getUsLoginName());
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
	 * 根据用户名查询
	 * 
	 * @param users
	 * @return
	 */
	public Users selectById(Users users) {
		Users users1 = null;
		openCon();
		String sql = "select * from tb_users where us_loginname=?";
		try {
			pst = con.prepareStatement(sql);
			pst.setString(1, users.getUsLoginName());
			rs = pst.executeQuery();
			if (rs.next()) {
				users1 = new Users();
				users1.setUsLoginName(rs.getString("us_loginname"));
				users1.setPwd(rs.getString("pwd"));
				users1.setPhone(rs.getString("phone"));
				users1.setEmail(rs.getString("email"));
				users1.setNickName(rs.getString("nickname"));
				users1.setRemark(rs.getString("remark"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return users1;
	}

	/**
	 * 登录
	 * 
	 * @param users
	 * @return Users
	 */
	public Users selectByLoginNameAndPwd(Users users) {
		Users users1 = null;
		openCon();
		String sql = "select * from tb_users where us_loginname=? and pwd=?";
		try {
			pst = con.prepareStatement(sql);
			pst.setString(1, users.getUsLoginName());
			pst.setString(2, users.getPwd());
			rs = pst.executeQuery();
			if (rs.next()) {
				users1 = new Users();
				users1.setUsLoginName(rs.getString("us_loginname"));
				users1.setPwd(rs.getString("pwd"));
				users1.setPhone(rs.getString("phone"));
				users1.setEmail(rs.getString("email"));
				users1.setNickName(rs.getString("nickname"));
				users1.setRemark(rs.getString("remark"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return users1;
	}

	/**
	 * 删除用户
	 * 
	 * @param users
	 * @return
	 */
	public int delete(Users users) {
		int rows = -1;
		openCon();
		String sql = "delete * from tb_users where us_loginname=?";
		try {
			pst = con.prepareStatement(sql);
			pst.setString(1, users.getUsLoginName());
			rows = pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return rows;
	}
	/**
	 * 查找所有用户
	 * 
	 * @param users
	 * @return
	 */
	public List<Users> selectAllUsers() {
		List<Users> list = new ArrayList<Users>();
		openCon();
		String sql = "select * from tb_users";
		try {
			pst = con.prepareStatement(sql);
			rs=pst.executeQuery();
			while(rs.next()){
				Users users1 = new Users();
				users1.setUsLoginName(rs.getString("us_loginname"));
				users1.setPwd(rs.getString("pwd"));
				users1.setPhone(rs.getString("phone"));
				users1.setEmail(rs.getString("email"));
				users1.setNickName(rs.getString("nickname"));
				users1.setRemark(rs.getString("remark"));
				list.add(users1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return list;
	}
}
