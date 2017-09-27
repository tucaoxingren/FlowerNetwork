package com.flower.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 订单实体
 * @author stud
 *
 */

@SuppressWarnings("serial")
public class Orders implements Serializable{
	private String ordNo;	//订单编号
	private Date ordData;	//订单日期
	private Users users;	//下单用户
	private String address;	//地址
	private String phone;	//联系方式
	private String ordName;	//订单名称
	private float ordPrice;	//订单价格
	
	public String getOrdNo() {
		return ordNo;
	}
	public void setOrdNo(String ordNo) {
		this.ordNo = ordNo;
	}
	public Date getOrdData() {
		return ordData;
	}
	public void setOrdData(Date ordData) {
		this.ordData = ordData;
	}
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getOrdName() {
		return ordName;
	}
	public void setOrdName(String ordName) {
		this.ordName = ordName;
	}
	public float getOrdPrice() {
		return ordPrice;
	}
	public void setOrdPrice(float ordPrice) {
		this.ordPrice = ordPrice;
	}	
}
