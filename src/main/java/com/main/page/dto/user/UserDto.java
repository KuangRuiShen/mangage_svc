package com.main.page.dto.user;

//登录用户
public class UserDto {

	private Integer id;
	
	private String username;
	
	private String password;
	
	private String lastpassword;
	
	private String remark;

	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getLastpassword() {
		return lastpassword;
	}

	public void setLastpassword(String lastpassword) {
		this.lastpassword = lastpassword;
	}


	
}
