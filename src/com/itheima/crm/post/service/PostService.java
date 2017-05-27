package com.itheima.crm.post.service;

import java.util.List;

import com.itheima.crm.department.domain.CrmDepartment;
import com.itheima.crm.post.domain.CrmPost;

public interface PostService {
	/**
	 * 查询指定部门的所有职务
	 * @param department
	 * @return
	 */
	public List<CrmPost> findAll(CrmDepartment department);
}
