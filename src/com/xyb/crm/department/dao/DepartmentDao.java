package com.xyb.crm.department.dao;

import java.util.List;

import com.xyb.crm.department.domain.CrmDepartment;

public interface DepartmentDao {
	
	/**
	 * 查询所有部门
	 * @return
	 */
	public List<CrmDepartment> findAll();

}
