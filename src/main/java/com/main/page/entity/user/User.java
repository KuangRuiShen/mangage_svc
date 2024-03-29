package com.main.page.entity.user;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;

@TableName("user")
public class User {
	
	@TableId(type=IdType.AUTO)
	private Integer id;
	
	private String username;
	
	private String password;
	
	private String name;
	
	@TableField(exist=false)
	private String lastpassword;

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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastpassword() {
		return lastpassword;
	}

	public void setLastpassword(String lastpassword) {
		this.lastpassword = lastpassword;
	}
	
	
	
	

}
