package com.main.page.entity.product;

import com.baomidou.mybatisplus.annotations.TableName;

@TableName("menu")
public class Menu {
	
	private Integer id;
	
	private String title;
	
	private String px;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}


	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPx() {
		return px;
	}

	public void setPx(String px) {
		this.px = px;
	}
	
	
	
	

}
