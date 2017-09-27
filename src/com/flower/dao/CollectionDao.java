package com.flower.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.flower.entity.Collection;
import com.flower.entity.Flower;
import com.flower.entity.Users;

/*
 * 收藏商品的dao层
 * @author zch
 */
public class CollectionDao extends BaseDao {
	
	/*
	 * 查看所有收藏
	 */
	public List<Collection> selectAll(Users users){
		List<Collection> list =null;
		openCon();
		String sql="select * from tb_collection where us_loginname=?";
		try {
			pst=con.prepareStatement(sql);
			pst.setString(1, users.getUsLoginName());
			rs=pst.executeQuery();
			list =new ArrayList<Collection>();
			while(rs.next()){
				Collection temp = new Collection();
				temp.setClNo(rs.getString("cl_no"));
				
				Flower flower = new Flower();
				flower.setFlNo(rs.getString("fl_no"));
				temp.setFlower(flower);
				
				Users userss = new Users();
				userss.setUsLoginName(rs.getString("us_loginname"));
				temp.setUsers(userss);
				
				list.add(temp);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}		
		return list;		
	}	
	/*
	 * 增加收藏
	 */
	public int insert(Collection collection){
		int rows=-1;
		openCon();
		String sql="insert into tb_collection values(?,?,?)";
		try {
			pst=con.prepareStatement(sql);
			pst.setString(1, collection.getClNo());
			pst.setString(2, collection.getFlower().getFlNo());
			pst.setString(3, collection.getUsers().getUsLoginName());
			rows=pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}		
		return rows;		
	}
	/*
	 * 删除收藏
	 */
	public int delete(Collection collection){
		int rows=-1;
		openCon();
		String sql="delete * from tb_collection where cl_no=?";
		try {
			pst=con.prepareStatement(sql);
			pst.setString(1, collection.getClNo());
			rows=pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}		
		return rows;		
	}


}
