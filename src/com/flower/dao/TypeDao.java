package com.flower.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.flower.entity.Type;

/**
 * 鲜花类型的dao层
 * @author zch
 *
 */
public class TypeDao extends BaseDao{
	/**
	 * 增加鲜花类型
	 * @param type
	 * @return 受影响的行数
	 */
	public int insert(Type type){
		int rows = -1;
		openCon();
		String sql="insert into tb_type (tp_id,tp_name,remark) values(?,?,?)";
		try {
			pst=con.prepareStatement(sql);
			pst.setInt(1, type.getTpId());
			pst.setString(2, type.getTpName());
			pst.setString(3, type.getRemark());
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
	 * 删除鲜花类型
	 * @param type
	 * @return 受影响的行数
	 */
	public int delete(int type){
		int rows = -1;
		openCon();
		String sql="delete from tb_type where tp_id=?";
		try {
			pst=con.prepareStatement(sql);
			pst.setInt(1, type);
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
	 * 修改鲜花类型
	 * @param type
	 * @return 受影响的行数
	 */
	public int update(Type type){
		int rows = -1;
		openCon();
		String sql="update tb_type set tp_name=?,remark=? where tp_id=?";
		try {
			pst=con.prepareStatement(sql);			
			pst.setString(1, type.getTpName());
			pst.setString(2, type.getRemark());
			pst.setInt(3, type.getTpId());
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
	 * 根据ID查询鲜花类型
	 * @param manager 要查询的鲜花类型
	 * @return 返回查询到的鲜花类型
	 */
	public Type selectById(Type type){
		Type temp = null;
		openCon();
		String sql="select * from tb_type where tp_id=?";
		try {
			pst=con.prepareStatement(sql);
			pst.setInt(1, type.getTpId());
			rs=pst.executeQuery();
			if (rs.next()){
				temp = new Type();
				temp.setTpId(rs.getInt("tp_id"));
				temp.setTpName(rs.getString("tp_name"));
				temp.setRemark(rs.getString("remark"));
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
	 * 查询全部鲜花类型
	 */
	public List<Type> seleteAll(){
		List<Type> list=null;
		openCon();
		String sql="select * from tb_type";
		try {
			pst=con.prepareStatement(sql);
			rs=pst.executeQuery();
			list=new ArrayList<Type>();
			while(rs.next()){
				Type temp = new Type();
				temp.setTpId(rs.getInt("tp_id"));
				temp.setTpName(rs.getString("tp_name"));
				temp.setRemark(rs.getString("remark"));	
				
				list.add(temp);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			closeAll();
		}
		return list;
	}
	/**
	 * 模糊查询 鲜花类型名字
	 */
	public List<Type> seleteByName(String str){
		str="%"+str+"%";
		List<Type> list=null;
		openCon();
		String sql="select * from tb_type where tp_name like ?";
		try {
			pst=con.prepareStatement(sql);
			pst.setString(1, str);
			rs=pst.executeQuery();
			list=new ArrayList<Type>();
			while(rs.next()){
				Type temp = new Type();
				temp.setTpId(rs.getInt("tp_id"));
				temp.setTpName(rs.getString("tp_name"));
				temp.setRemark(rs.getString("remark"));	
				
				list.add(temp);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			closeAll();
		}
		return list;
	}
	/**
	 * 根据鲜花类型全名查找鲜花类型
	 * @param str
	 * @return
	 */
	public Type seleteByName1(String str){
		
		Type type = null;
		openCon();
		String sql="select * from tb_type where tp_name=?";
		try {
			pst=con.prepareStatement(sql);
			pst.setString(1, str);
			rs=pst.executeQuery();
			
			if(rs.next()){
				type = new Type();
				type.setTpId(rs.getInt("tp_id"));
				type.setTpName(rs.getString("tp_name"));
				type.setRemark(rs.getString("remark"));	
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			closeAll();
		}
		return type;
	}
}
