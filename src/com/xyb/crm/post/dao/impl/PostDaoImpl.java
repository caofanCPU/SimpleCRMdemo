package com.xyb.crm.post.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.xyb.crm.department.domain.CrmDepartment;
import com.xyb.crm.post.dao.PostDao;
import com.xyb.crm.post.domain.CrmPost;

public class PostDaoImpl extends HibernateDaoSupport implements PostDao {

	@SuppressWarnings("unchecked")
    @Override
	public List<CrmPost> findAll(CrmDepartment department) {
	    /**
	     * 1.HQL是面向对象的
	     * 2.department = ?，传参department对象的底层实现即为department.depId = ?，传参department.depId
	     */
		return this.getHibernateTemplate().find("from CrmPost where department = ?", department);
	}
}
