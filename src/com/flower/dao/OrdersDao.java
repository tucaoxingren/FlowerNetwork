package com.flower.dao;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.flower.entity.Orders;
import com.flower.entity.Users;

/**
 * 订单的dao层实现类
 * @author zch
 *
 */

public class OrdersDao extends BaseDao{
	/**
	 * 增加订单
	 * @param orders
	 * @return
	 */
	public int insert(Orders orders){
		int rows=-1;
		openCon();
		String sql="insert into tb_orders (ord_no,ord_date,us_loginname,"
				+ "address,phone,ord_name,ord_price) values(?,?,?,?,?,?,?)";
		//String sql="insert into tb_users values(?,?,?,?,?,?,?)";
		//顺序和数据表一致

		try {
			pst=con.prepareStatement(sql);
			pst.setString(1, orders.getOrdNo());
			//java.util.Date 需要转化为Java.sql.Data
			//需要取出util.Date 的毫秒数转化为.sql.Data
			pst.setDate(2, new Date(orders.getOrdData().getTime()));
			//
			pst.setString(3, orders.getUsers().getUsLoginName());
			pst.setString(4, orders.getAddress());
			pst.setString(5, orders.getPhone());
			pst.setString(6, orders.getOrdName());
			pst.setFloat(7, orders.getOrdPrice());

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
	 * 根据订单id查询订单
	 * @param orders
	 * @return
	 */
	public Orders selectById(Orders orders){
		Orders temp=null;
		openCon();
		String sql="select * from tb_orders where ord_no=?";
		try {
			pst=con.prepareStatement(sql);
			pst.setString(1, orders.getOrdNo());
			rs=pst.executeQuery();
			if(rs.next()){
				temp=new Orders();
				temp.setOrdNo(rs.getString("ord_no"));
				temp.setAddress(rs.getString("address"));
				temp.setOrdData(rs.getDate("ord_date"));
				temp.setOrdName(rs.getString("ord_name"));
				temp.setOrdPrice(rs.getFloat("ord_price"));
				temp.setPhone(rs.getString("phone"));
				//将数据库中的用户名封装成一个users对象
				//在设置给订单
				Users users=new Users();
				users.setUsLoginName(rs.getString("us_loginname"));
				temp.setUsers(users);				
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
	 * 删除订单
	 * @param orders
	 * @return
	 */
	public int delete(Orders orders){
		int rows=-1;
		openCon();
		String sql="delete * from tb_orders where ord_no=?";
		try {
			pst=con.prepareStatement(sql);
			pst.setString(1, orders.getOrdNo());
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
	 * 修改订单
	 * @param orders
	 * @return
	 */
	public int update(Orders orders){
		int rows=-1;
		openCon();
		String sql="update tb_orders set ord_date=?,us_loginname=?,address=?,"
				+ "phone=?,ordname=?,ord_price where ord_id=?";
		//String sql="insert into tb_users values(?,?,?,?,?,?,?)";
		//顺序和数据表一致

		try {
			pst=con.prepareStatement(sql);
			pst.setString(7, orders.getOrdNo());
			//java.util.Date 需要转化为Java.sql.Data
			//需要取出util.Date 的毫秒数转化为.sql.Data
			pst.setDate(1, new Date(orders.getOrdData().getTime()));
			//
			pst.setString(2, orders.getUsers().getUsLoginName());
			pst.setString(3, orders.getAddress());
			pst.setString(4, orders.getPhone());
			pst.setString(5, orders.getOrdName());
			pst.setFloat(6, orders.getOrdPrice());

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
	 * 查询全部订单
	 * @param orders
	 * @return
	 */
	public List<Orders> selectAll(){
		List<Orders> list=null;
		openCon();
		String sql="select * from tb_orders";
		try {
			pst=con.prepareStatement(sql);
			rs=pst.executeQuery();
			list=new ArrayList<Orders>();
			while(rs.next()){
				Orders temp = new Orders();
				temp.setOrdNo(rs.getString("ord_no"));
				temp.setAddress(rs.getString("address"));
				temp.setOrdData(rs.getDate("ord_date"));
				temp.setOrdName(rs.getString("ord_name"));
				temp.setOrdPrice(rs.getFloat("ord_price"));
				temp.setPhone(rs.getString("phone"));
				//将数据库中的用户名封装成一个users对象
				//在设置给订单
				Users users=new Users();
				users.setUsLoginName(rs.getString("us_loginname"));
				temp.setUsers(users);
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
	 * 根据用户名查找订单
	 * @param users
	 * @return
	 */
	public List<Orders> selectByUsers(Users users){
		List<Orders> list=null;
		openCon();
		String sql="select * from tb_orders ord,tb_users"
				+ " u WHERE ord.us_loginname=u.us_loginname AND u.us_loginname=?";
		try {
			pst=con.prepareStatement(sql);			
			pst.setString(1, users.getUsLoginName());
			rs=pst.executeQuery();
			list=new ArrayList<Orders>();
			while(rs.next()){
				Orders temp = new Orders();
				temp.setOrdNo(rs.getString("ord_no"));
				temp.setOrdData(rs.getDate("ord_date"));
				//将数据库中的用户名封装成一个users对象
				//在设置给订单
				Users users1=new Users();
				users1.setUsLoginName(rs.getString("us_loginname"));
				temp.setUsers(users1);
				temp.setAddress(rs.getString("address"));
				temp.setPhone(rs.getString("phone"));
				temp.setOrdName(rs.getString("ord_name"));
				temp.setOrdPrice(rs.getFloat("ord_price"));
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
	 * 根据用户名查询该用户所有订单
	 * @param orders
	 * @return 订单
	 */
	public List<Orders> selectByLoginName(String orders){
		List<Orders> list=null;
		openCon();
		String sql="select * from tb_orders where us_loginname=?";
		try {
			pst=con.prepareStatement(sql);			
			pst.setString(1, orders);
			rs=pst.executeQuery();
			list=new ArrayList<Orders>();
			while(rs.next()){
				Orders temp = new Orders();
				temp.setOrdNo(rs.getString("ord_no"));
				temp.setOrdData(rs.getDate("ord_date"));				
				temp.setAddress(rs.getString("address"));				
				temp.setOrdName(rs.getString("ord_name"));
				temp.setOrdPrice(rs.getFloat("ord_price"));
				temp.setPhone(rs.getString("phone"));
				//将数据库中的用户名封装成一个users对象
				//在设置给订单
				Users users=new Users();
				users.setUsLoginName(rs.getString("us_loginname"));
				temp.setUsers(users);
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

}
