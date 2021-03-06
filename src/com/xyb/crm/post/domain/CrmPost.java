package com.xyb.crm.post.domain;

import java.util.HashSet;
import java.util.Set;

import com.xyb.crm.department.domain.CrmDepartment;
import com.xyb.crm.staff.domain.CrmStaff;

public class CrmPost {
    /*
     * CREATE TABLE `crm_post`
     * (
     *  `postId` varchar(255) NOT NULL PRIMARY KEY,
     *  `postName` varchar(100) DEFAULT NULL,
     *  `depId` varchar(255) DEFAULT NULL,
     *  CONSTRAINT FOREIGN KEY (`depId`) REFERENCES `crm_department` (`depId`)
     * );
     */
	
	private String postId;
	private String postName;		//职务名称
	private String postTest;
	
	/**
	 *  1.多对一：多个职务 属性 【一个部门】
	 *  2.注意：表间关联的字段属性，往往是一个对象，所以需要new创建，否则容易出现PO类封装时找不到对应字段(因为空指针)
     *  3.可使用：private CrmDepartment department = new CrmDepartment();
     *  4.但是new对象不利于统一管理，所以使用Spring的IoC(DI)依赖注入的方式
     *  5.IoC(DI)依赖注入的理解：A类中调用了B类的方法或使用字段，可以先new一个B类，但是容易浪费内存
     *      Spring配置：【该方法还未成功！】
     *          <bean id="A类实例的名称" class="A类的限定名" scope="prototype">
     *              <property name="要引用的依赖配置bean的id信息" ref="A类所依赖的B类实例"></property>
     *          </bean>
	 */
	
	private CrmDepartment department = new CrmDepartment();
	// 一对多： 一个职务 可以有 【多个员工】
	private Set<CrmStaff> staffSet = new HashSet<CrmStaff>();

    public String getPostTest() {
        return postTest;
    }

    public void setPostTest(String postTest) {
        this.postTest = postTest;
    }

    public String getPostId() {
		return postId;
	}

	public void setPostId(String postId) {
		this.postId = postId;
	}

	public String getPostName() {
		return postName;
	}

	public void setPostName(String postName) {
		this.postName = postName;
	}

	public CrmDepartment getDepartment() {
		return department;
	}

	public void setDepartment(CrmDepartment department) {
		this.department = department;
	}

	public Set<CrmStaff> getStaffSet() {
		return staffSet;
	}

	public void setStaffSet(Set<CrmStaff> staffSet) {
		this.staffSet = staffSet;
	}
}
