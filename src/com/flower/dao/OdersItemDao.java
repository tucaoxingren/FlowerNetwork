package com.flower.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.flower.entity.Flower;
import com.flower.entity.OrderItem;
import com.flower.entity.Orders;

/**
 * 订单详情的dao层
 * 
 * @author zch
 * 
 */
public class OdersItemDao extends BaseDao {
	/**
	 * 增加订单详情
	 * 
	 * @param orderItem
	 * @return 受影响的行数
	 */
	public int insert(OrderItem orderItem) {
		int rows = -1;
		openCon();
		String sql = "insert into tb_orderitem values(?,?,?,?)";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, orderItem.getOiId());
			pst.setString(2, orderItem.getOrders().getOrdNo());
			pst.setString(3, orderItem.getFlower().getFlNo());
			pst.setInt(4, orderItem.getOiCount());
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
	 * 修改订单详情 货品数量
	 * 
	 * @param orderItem
	 * @return 受影响的行数
	 */
	public int update(OrderItem orderItem) {
		int rows = -1;
		openCon();
		String sql = "update tb_orderitem set oi_count=? where oi_id=?";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, orderItem.getOiCount());
			pst.setInt(2, orderItem.getOiId());
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
	 * 删除订单详情
	 * 
	 * @param orderItem
	 * @return
	 */
	public int delete(OrderItem orderItem) {
		int rows = -1;
		openCon();
		String sql = "delete * from tb_orderitem where oi_id=?";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, orderItem.getOiId());
			rows = pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return rows;
	}

	public List<OrderItem> selectByOrdersNo(Orders orders) {
		List<OrderItem> list = new ArrayList<OrderItem>();
		openCon();
		String sql = "select * from tb_orderitem oi,tb_orders ord where ord.ord_no=oi.ord_no and ord.ord_no=?";
		//String sql = "select * from tb_orders where ord_no=?";
		try {
			pst = con.prepareStatement(sql);
			pst.setString(1, orders.getOrdNo());
			rs = pst.executeQuery();
			while (rs.next()) {
				OrderItem temp = new OrderItem();
				
				Flower flower = new Flower();
				flower.setFlNo(rs.getString("fl_no"));
				temp.setFlower(flower);
				
				temp.setOiCount(rs.getInt("oi_count"));
				
				temp.setOiId(rs.getInt("oi_id"));
				
				Orders order = new Orders();
				order.setOrdNo(rs.getString("ord_no"));
				temp.setOrders(order);
				list.add(temp);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	/**
	 * 根据订单主键查询订单的详细信息
	 * 
	 * @param OrderItem
	 * @return
	 */

	/*
	 * public ArrayList<Orders> seleteByOiId(Orders orderItem){
	 * ArrayList<Orders> list = new ArrayList<Orders>(); openCon(); String
	 * sql="selete * from tb_orderitem ordit,tb_orders ord where" +
	 * " ord.ord_no=ordit.ord_no and ord.ord_no=?"; try {
	 * pst=con.prepareStatement(sql); pst.setString(1, orderItem.getOrdNo());
	 * rs=pst.executeQuery(); while(rs.next()){ Orders temp = new Orders();
	 * temp.setOrdNo(rs.getInt("oi_id"));
	 * 
	 * Orders order = new Orders(); order.setOrdNo(rs.getString("ord_no"));
	 * temp.setOrders(order);
	 * 
	 * Flower flower = new Flower(); flower.setFlNo(rs.getString("fl_no"));
	 * temp.setFlower(flower);
	 * 
	 * temp.setOiCount(rs.getInt("oi_count")); list.add(temp); } } catch
	 * (SQLException e) { // TODO Auto-generated catch block
	 * e.printStackTrace(); } finally{ closeAll(); } return list; }
	 */
}
