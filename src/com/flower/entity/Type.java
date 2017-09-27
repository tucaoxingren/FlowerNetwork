package com.flower.entity;

import java.io.Serializable;
/**
 * 鲜花类型，实现序列化接口
 * @author zch
 * 
 */

@SuppressWarnings("serial")
public class Type implements Serializable{
	
	private int tpId;	//鲜花编号
	private String tpName;	//鲜花名称
	private String remark;	//备注
	

	public int getTpId() {
		return tpId;
	}

	public void setTpId(int tpId) {
		this.tpId = tpId;
	}

	public String getTpName() {
		return tpName;
	}

	public void setTpName(String tpName) {
		this.tpName = tpName;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}
