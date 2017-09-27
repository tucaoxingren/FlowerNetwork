package com.flower.entity;

import java.io.Serializable;

/**
 * 用户实体，实现序列化接口
 * @author zch
 *
 */
@SuppressWarnings("serial")
public class Users implements Serializable{
	private String usLoginName;  //用户名
	private String pwd;			 //密码
	private String phone;		 //联系方式
	private String nickName;	 //昵称
	private String email;		 //电子邮件
	private String remark;		 //备注
	
	public String getUsLoginName() {
		return usLoginName;
	}
	public void setUsLoginName(String usLoginName) {
		this.usLoginName = usLoginName;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	} 
	
	
}
