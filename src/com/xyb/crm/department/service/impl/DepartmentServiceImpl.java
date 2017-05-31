package com.xyb.crm.department.service.impl;

import java.util.List;

import com.xyb.crm.department.dao.DepartmentDao;
import com.xyb.crm.department.domain.CrmDepartment;
import com.xyb.crm.department.service.DepartmentService;

public class DepartmentServiceImpl implements DepartmentService {

	private DepartmentDao departmentDao;
	public void setDepartmentDao(DepartmentDao departmentDao) {
		this.departmentDao = departmentDao;
	}
	@Override
	public List<CrmDepartment> findAll() {
		return departmentDao.findAll();
	}

}
