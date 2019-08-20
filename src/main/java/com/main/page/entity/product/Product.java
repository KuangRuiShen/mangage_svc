package com.main.page.entity.product;

import com.baomidou.mybatisplus.annotations.TableField;
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
	private Integer id;
	
	private String title;//产品主题
	
	private String imgurl;//主题图片
	
	private String roundurl;//轮播图
	
	private String videourl;//文件url
	
	private String remark;//文字说明
	
	private Integer serial;//序号
	@TableField("type_id")
	private String typeId;
	
	private Integer year;


	
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

	
	

	public String getTypeId() {
		return typeId;
	}

	public void setTypeId(String typeId) {
		this.typeId = typeId;
	}

	public String getImgurl() {
		return imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getVideourl() {
		return videourl;
	}

	public void setVideourl(String videourl) {
		this.videourl = videourl;
	}

	public Integer getSerial() {
		return serial;
	}

	public void setSerial(Integer serial) {
		this.serial = serial;
	}

	public Integer getYear() {
		return year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}

	public String getRoundurl() {
		return roundurl;
	}

	public void setRoundurl(String roundurl) {
		this.roundurl = roundurl;
	}
	
	

}
