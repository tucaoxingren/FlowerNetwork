package com.flower.entity;

import java.io.Serializable;

/**
 * 鲜花实体
 * @author stud
 */
@SuppressWarnings("serial")
public class Flower implements Serializable{
	private String flNo;	//鲜花编号
	private String flName;	//鲜花名称
	private float flPrice;	//鲜花价格
	private int num;		//鲜花库存数量
	private String pic;		//鲜花图片
	private String descri;	//鲜花描述
	private Type tpId;		//鲜花类型
	private String remark;	//备注	
	//添加一个属性，数据库中没有这个属性
	private int flCount = 1;    //购物车鲜花数量
	public String getFlNo() {
		return flNo;
	}
	public void setFlNo(String flNo) {
		this.flNo = flNo;
	}
	public String getFlName() {
		return flName;
	}
	public void setFlName(String flName) {
		this.flName = flName;
	}
	public float getFlPrice() {
		return flPrice;
	}
	public void setFlPrice(float flPrice) {
		this.flPrice = flPrice;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getDescri() {
		return descri;
	}
	public void setDescri(String descri) {
		this.descri = descri;
	}
	public Type getType() {
		return tpId;
	}
	public void setType(Type tpId) {
		this.tpId = tpId;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public int getFlCount() {
		return flCount;
	}
	public void setFlCount(int flCount) {
		this.flCount = flCount;
	}
	
	

}
