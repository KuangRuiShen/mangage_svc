package com.main.page.entity.file;

import java.util.Date;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 * @author krs
 * @time 2019年7月30日 上午10:24:51
 * @describe 上传文件信息
 */
@TableName("file")
public class FileInfo {

	@TableId
	private String id;
	
	@TableField("file_url")
	private String fileUrl;
	
	@TableField("create_date")
	private Date createDate;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getFileUrl() {
		return fileUrl;
	}

	public void setFileUrl(String fileUrl) {
		this.fileUrl = fileUrl;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public FileInfo(String id, String fileUrl) {
		super();
		this.id = id;
		this.fileUrl = fileUrl;
		this.createDate = new Date();
	}

	public FileInfo( ) {
		super();
	}

	
}
