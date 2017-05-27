package com.itheima.crm.department.dao;

import com.itheima.crm.department.domain.CrmDepartment;

import java.util.List;

public interface DepartmentDao {
	
	/**
	 * 查询所有部门
	 * @return
	 */
	public List<CrmDepartment> findAll();

}
