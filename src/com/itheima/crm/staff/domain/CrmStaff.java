package com.itheima.crm.staff.domain;

import java.util.Date;

import com.itheima.crm.post.domain.CrmPost;


public class CrmStaff {
	/*
	 * CREATE TABLE `crm_staff` (
	  `staffId` varchar(255) NOT NULL PRIMARY KEY,
	  `loginName` varchar(100) DEFAULT NULL,
	  `loginPwd` varchar(100) DEFAULT NULL,
	  `staffName` varchar(100) DEFAULT NULL,
	  `gender` varchar(20) DEFAULT NULL,
	  `onDutyDate` datetime DEFAULT NULL,
	  `postId` varchar(255) DEFAULT NULL,
	  CONSTRAINT FOREIGN KEY (`postId`) REFERENCES `crm_post` (`postId`)
	);
	 */
	private String staffId;
	private String loginName;	//登录名
	private String loginPwd;	//登录密码
	private String staffName;	//员工姓名
	private String gender;		//性别
	private Date onDutyDate;	//入职时间

	//多对一：多个员工 属于 【一个职务】
	private CrmPost post;

	public String getStaffId() {
		return staffId;
	}

	public void setStaffId(String staffId) {
		this.staffId = staffId;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getLoginPwd() {
		return loginPwd;
	}

	public void setLoginPwd(String loginPwd) {
		this.loginPwd = loginPwd;
	}

	public String getStaffName() {
		return staffName;
	}

	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getOnDutyDate() {
		return onDutyDate;
	}

	public void setOnDutyDate(Date onDutyDate) {
		this.onDutyDate = onDutyDate;
	}

	public CrmPost getPost() {
		return post;
	}

	public void setPost(CrmPost post) {
		this.post = post;
	}
	
	
	
}
