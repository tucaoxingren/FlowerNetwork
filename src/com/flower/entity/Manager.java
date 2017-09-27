package com.flower.entity;

import java.io.Serializable;
/**
 * 管理员实体，实现序列化接口
 * @author zch
 *
 */

@SuppressWarnings("serial")
public class Manager implements Serializable{
	
	private String loginName;//登录名
	private String pwd;		 //登录密码

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

}
