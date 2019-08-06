package com.main.page.vo.product;

public class ItemVo {
	
	private Integer id;
	
	private String title;
	
	private String imgurl;

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

	public ItemVo(Integer id, String title) {
		super();
		this.id = id;
		this.title = title;
	}

	public ItemVo() {
		super();
	}

	public String getImgurl() {
		return imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}
	
	
	
	

}
