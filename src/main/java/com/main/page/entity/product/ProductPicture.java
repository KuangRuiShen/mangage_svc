package com.main.page.entity.product;

import com.baomidou.mybatisplus.annotations.TableName;

/**
 * @author krs
 * @time 2019年7月29日 下午3:25:52
 * @describe 产品图
 * 
 */
@TableName("product_picture")
public class ProductPicture {
	
	private String productId;//产品id
	
	private String url;//图片地址
	
	private Integer order;//排序号；

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getOrder() {
		return order;
	}

	public void setOrder(Integer order) {
		this.order = order;
	}
	
	

}
