package com.flower.entity;

import java.io.Serializable;

/**
 * 商品收藏
 * @author admin
 *
 */
public class Collection implements Serializable {
	private String clNo;		//收藏编号
	private Flower flNo;		//鲜花编号
	private Users usLoginName;	//用户名
	
	public String getClNo() {
		return clNo;
	}
	public void setClNo(String clNo) {
		this.clNo = clNo;
	}
	public Flower getFlower() {
		return flNo;
	}
	public void setFlower(Flower flNo) {
		this.flNo = flNo;
	}
	public Users getUsers() {
		return usLoginName;
	}
	public void setUsers(Users usLoginName) {
		this.usLoginName = usLoginName;
	}
	
}
