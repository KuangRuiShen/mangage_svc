package com.main.page.entity.product;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;

/**
 * @author krs
 * @time 2019年7月29日 下午3:22:58
 * @describe 产品
 * 
 */
@TableName("product")
public class Product {
	
	@TableId(type=IdType.AUTO)
	private String id;
	
	private String title;//产品主题
	
	private String fileUrl;//主题图片
	
	private String remark;//文字说明

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getFileUrl() {
		return fileUrl;
	}

	public void setFileUrl(String fileUrl) {
		this.fileUrl = fileUrl;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	

}
