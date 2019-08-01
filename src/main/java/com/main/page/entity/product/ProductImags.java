package com.main.page.entity.product;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;

@TableName("product_image")
public class ProductImags {
	
	@TableField("product_id")
	private String 	prodcutId;
	
	@TableField("imgurl")
	private String imgurl;

	public String getProdcutId() {
		return prodcutId;
	}

	public void setProdcutId(String prodcutId) {
		this.prodcutId = prodcutId;
	}

	public String getImgurl() {
		return imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}

	public ProductImags() {
		super();
	}

	public ProductImags(String prodcutId, String imgurl) {
		super();
		this.prodcutId = prodcutId;
		this.imgurl = imgurl;
	}
	
	
	
	
	
	

}
