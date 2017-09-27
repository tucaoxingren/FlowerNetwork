package com.flower.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.flower.entity.Flower;
import com.flower.entity.Type;
/**
 * 鲜花的dao层
 * @author admin
 *
 */
public class FlowerDao extends BaseDao{
	/**
	 * 增加鲜花
	 * @param flower
	 * @return 受影响的行数
	 */
	public int insert(Flower flower){
		int rows=-1;
		openCon();
		String sql="insert into tb_flower values(?,?,?,?,?,?,?,?)";
		try {
			pst=con.prepareStatement(sql);
			pst.setString(1, flower.getFlNo());
			pst.setString(2, flower.getFlName());
			pst.setFloat(3, flower.getFlPrice());
			pst.setInt(4, flower.getNum());
			pst.setString(5,flower.getPic());
			pst.setString(6, flower.getDescri());
			pst.setInt(7, flower.getType().getTpId());
			pst.setString(8,flower.getRemark());
			rows=pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return rows;
	}
	/**
	 * 修改鲜花
	 * @param flower
	 * @return 受影响的行数
	 */
	public int update(Flower flower){
		int rows=-1;
		openCon();
		String sql="update tb_flower set fl_name=?,fl_price=?,num=?,"
				+ "pic=?,descri=?,tp_id=?,remark=? where fl_no=?";
		try {
			pst=con.prepareStatement(sql);
			pst.setString(1, flower.getFlName());
			pst.setFloat(2, flower.getFlPrice());
			pst.setInt(3, flower.getNum());
			pst.setString(4,flower.getPic());
			pst.setString(5, flower.getDescri());
			pst.setInt(6, flower.getType().getTpId());
			pst.setString(7,flower.getRemark());
			pst.setString(8, flower.getFlNo());
			rows=pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return rows;
	}
	/**
	 * 删除鲜花
	 * @param flower
	 * @return 受影响的行数
	 */	
	public int delete(Flower flower){
		int rows=-1;
		openCon();
		String sql="delete from tb_flower where fl_no=?";
		try {
			pst=con.prepareStatement(sql);
			pst.setString(1, flower.getFlNo());
			rows=pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		} 
		return rows;
	}
	/**
	 * 根据鲜花主键查询
	 * @param flower
	 * @return 查询到的鲜花
	 */
	public Flower selectById(Flower flower){
		Flower flower2 = null;
		openCon();
		String sql="select * from tb_flower where fl_no=?";
		try {
			pst=con.prepareStatement(sql);
			pst.setString(1, flower.getFlNo());
			rs=pst.executeQuery();
			if(rs.next()){
				flower2=new Flower();
				flower2.setFlNo(rs.getString("fl_no"));
				flower2.setFlName(rs.getString("fl_name"));
				flower2.setFlPrice(rs.getFloat("fl_price"));
				flower2.setNum(rs.getInt("num"));
				flower2.setPic(rs.getString("pic"));
				flower2.setDescri(rs.getString("descri"));
				
				Type type = new Type();
				type.setTpId(rs.getInt("tp_id"));
				flower2.setType(type);
				
				flower2.setRemark(rs.getString("remark"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			closeAll();
		}
		return flower2;
		
	}
	/**
	 * 查询所有
	 * @return 所有的鲜花列表
	 */
	public List<Flower> selectAll(){
		List<Flower> list = new ArrayList<Flower>();
		openCon();
		String sql="select * from tb_flower";
		try {
			pst=con.prepareStatement(sql);
			rs=pst.executeQuery();
			
			while(rs.next()){
				Flower flower = new Flower();
				flower.setFlNo(rs.getString("fl_no"));
				flower.setFlName(rs.getString("fl_name"));
				flower.setFlPrice(rs.getFloat("fl_price"));
				flower.setNum(rs.getInt("num"));
				flower.setPic(rs.getString("pic"));
				flower.setDescri(rs.getString("descri"));
				
				Type type = new Type();
				type.setTpId(rs.getInt("tp_id"));
				flower.setType(type);
				
				flower.setRemark(rs.getString("remark"));
				
				list.add(flower);
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
	 * 根据鲜花类型 tp_id查询
	 * @param flower
	 * @return 查询到的鲜花列表
	 */
	public List<Flower> selectByFlName(Type types){
		List<Flower> list = new ArrayList<Flower>();
		
		openCon();
		String sql="select * from tb_flower fl,tb_type tp where fl.tp_id=tp.tp_id and tp.tp_id=?";
		try {
			pst=con.prepareStatement(sql);
			pst.setInt(1, types.getTpId());
			rs=pst.executeQuery();
			
			while(rs.next()){
				Flower flower2 = new Flower();
				flower2.setFlNo(rs.getString("fl_no"));
				flower2.setFlName(rs.getString("fl_name"));
				flower2.setFlPrice(rs.getFloat("fl_price"));
				flower2.setNum(rs.getInt("num"));
				flower2.setPic(rs.getString("pic"));
				flower2.setDescri(rs.getString("descri"));
				
				Type type = new Type();
				type.setTpId(rs.getInt("tp_id"));
				flower2.setType(type);
				
				flower2.setRemark(rs.getString("remark"));
				
				list.add(flower2);
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
	 * 模糊查询
	 * @param str 输入的字段
	 * @return 查询到的鲜花列表
	 */
	public List<Flower> selectByName(String str){
		List<Flower> list = null;
		openCon();
		String sql="select * from tb_flower where fl_name like ?";
		//str="%"+str+"%";
		str="%"+str+"%";
		try {
			pst=con.prepareStatement(sql);
			pst.setString(1,str);
			rs=pst.executeQuery();
			list = new ArrayList<Flower>();
			while(rs.next()){
				Flower flower2 = new Flower();
				flower2.setFlNo(rs.getString("fl_no"));
				flower2.setFlName(rs.getString("fl_name"));
				flower2.setFlPrice(rs.getFloat("fl_price"));
				flower2.setNum(rs.getInt("num"));
				flower2.setPic(rs.getString("pic"));
				flower2.setDescri(rs.getString("descri"));
				
				Type type = new Type();
				type.setTpId(rs.getInt("tp_id"));
				flower2.setType(type);
				
				flower2.setRemark(rs.getString("remark"));
				
				list.add(flower2);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			closeAll();
		}
		return list;
		
	}

}
