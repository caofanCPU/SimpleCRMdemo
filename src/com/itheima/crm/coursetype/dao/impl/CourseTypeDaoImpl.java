package com.itheima.crm.coursetype.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.itheima.crm.coursetype.dao.CourseTypeDao;
import com.itheima.crm.coursetype.domain.CrmCourseType;
import com.itheima.crm.page.PageHibernateCallback;

public class CourseTypeDaoImpl extends HibernateDaoSupport implements CourseTypeDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<CrmCourseType> findAll() {
		return this.getHibernateTemplate().find("from CrmCourseType");
	}

	@Override
	public List<CrmCourseType> findAll(String condition, Object[] params) {
		String hql = "from CrmCourseType where 1=1 " + condition;
		return this.getHibernateTemplate().find(hql , params);
	}

	@Override
	public CrmCourseType findById(String courseTypeId) {
		return this.getHibernateTemplate().get(CrmCourseType.class, courseTypeId);
	}

	@Override
	public void saveOrUpdate(CrmCourseType courseType) {
		this.getHibernateTemplate().saveOrUpdate(courseType);
	}

	@Override
	public int getTotalRecord(String condition, Object[] params) {
		String hql = "select count(c) from CrmCourseType c where 1=1 " + condition;
		List<Long> list = this.getHibernateTemplate().find(hql,params);
		return list.get(0).intValue();
	}

	@Override
	public List<CrmCourseType> findAll(String condition, Object[] params, int startIndex, int pageSize) {
		String hql = "from CrmCourseType where 1=1 " + condition;
		return this.getHibernateTemplate().execute(new PageHibernateCallback<CrmCourseType>().setHql(hql).setParams(params).setPageSize(pageSize).setStartIndex(startIndex));
	}

}
