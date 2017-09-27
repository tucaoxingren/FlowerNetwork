package com.flower.entity;

import java.io.Serializable;

/**
 * 订单详情实体
 * @author stud
 *
 */

@SuppressWarnings("serial")
public class OrderItem implements Serializable{
	private int oiId;		//订单详情ID
	private Orders ordNo;	//订单编号
	private Flower flNo;	//鲜花编号
	private int oiCount;	//订单详情数量
	
	public int getOiId() {
		return oiId;
	}
	public void setOiId(int oiId) {
		this.oiId = oiId;
	}
	public Orders getOrders() {
		return ordNo;
	}
	public void setOrders(Orders ordNo) {
		this.ordNo = ordNo;
	}
	public Flower getFlower() {
		return flNo;
	}
	public void setFlower(Flower flNo) {
		this.flNo = flNo;
	}
	public int getOiCount() {
		return oiCount;
	}
	public void setOiCount(int oiCount) {
		this.oiCount = oiCount;
	}	

}
