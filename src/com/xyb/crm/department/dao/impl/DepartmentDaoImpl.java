package com.xyb.crm.department.dao.impl;

import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.xyb.crm.department.dao.DepartmentDao;
import com.xyb.crm.department.domain.CrmDepartment;

public class DepartmentDaoImpl extends HibernateDaoSupport implements DepartmentDao {

	@SuppressWarnings("unchecked")
    @Override
	public List<CrmDepartment> findAll() {
	    // hql，在*.hbm.xml种，属性默认自动导包，即 auto-import="true"
//      session.createQuery("from CrmStaff"); //简写，存在自动导包 ， <hibernate-mapping auto-import="true">
//      session.createQuery("from com.xyb.crm.staff.domain.CrmStaff"); //完整写法

		return this.getHibernateTemplate().find("from CrmDepartment");
	}

}
