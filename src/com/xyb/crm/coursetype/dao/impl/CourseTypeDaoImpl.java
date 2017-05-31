package com.xyb.crm.coursetype.dao.impl;

import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.xyb.crm.coursetype.dao.CourseTypeDao;
import com.xyb.crm.coursetype.domain.CrmCourseType;
import com.xyb.crm.page.PageHibernateCallback;

/**
 * dao层执行Hibernate操作，[HQL语法待强化学习]
 */
public class CourseTypeDaoImpl extends HibernateDaoSupport implements CourseTypeDao {
    
	@SuppressWarnings("unchecked")
	@Override
	public List<CrmCourseType> findAll() {
	    /**
	     * 1.类CrmCourseType与crm_coursetype数据表已经由配置文件CrmCourseType.hbm.xml声明相关联
	     * 2.从crm_coursetype数据表获取所有的CrmCourseType对象，并返回装入List<CrmCourseType>容器中
	     */
		return this.getHibernateTemplate().find("from CrmCourseType");
	}

	@SuppressWarnings("unchecked")
    @Override
	public List<CrmCourseType> findAll(String condition, Object[] params) {
	    /**
	     * 1.where 1=1，采用动态SQL
	     * 2.执行HQL查询find操作
	     * 3.从crm_coursetype数据表获取所有的CrmCourseType对象，并返回装入List<CrmCourseType>容器中
	     */
		String hql = "from CrmCourseType where 1=1 " + condition;
		return this.getHibernateTemplate().find(hql, params);
	}

	@Override
	public CrmCourseType findById(String courseTypeId) {
	    /**
	     * 1.输入参数courseTypeId
	     * 2.根据courseTypeId从crm_coursetype数据表中获取courseTypeId所对应的CrmCourseType对象
	     * 3.返回此CrmCourseType对象
	     */
		return this.getHibernateTemplate().get(CrmCourseType.class, courseTypeId);
	}
	
	/**
	 * 添加或编辑(修改)记录(对象)
	 */
	@Override
	public void saveOrUpdate(CrmCourseType courseType) {
	    /**
	     * 1.Hibernate提供saveOrUpdate方法，将添加对象与更新对象合并为一个方法
	     * 2.输入参数CrmCourseType对象
	     * 3.判断执行save操作还是执行update操作的依据，检查CrmCourseType对象是否具有OID
	     * 4.如果具有OID，说明该CrmCourseType对象原本就存在数据表中，那么执行save操作
	     * 5.如果没有OID，说明该CrmCourseType对象原本不存在于数据表中，那么执行update操作
	     */
		this.getHibernateTemplate().saveOrUpdate(courseType);
	}

	@SuppressWarnings("unchecked")
    @Override
	public int getTotalRecord(String condition, Object[] params) {
	    /**
	     * 1.Hibernate提供getTotalRecord方法，根据查询条件及参数，即SQL完整表达式，获取满足条件的所有数据表对象
	     * 2.输入参数，查询条件String condition、对应查询参数Object[] params
	     * 3.执行查询find操作
	     * 4.从crm_coursetype数据表获取所有的CrmCourseType对象，并返回装入List<CrmCourseType>容器中
	     * 5.？？
	     */
		String hql = "select count(c) from CrmCourseType c where 1=1 " + condition;
		List<Long> list = this.getHibernateTemplate().find(hql, params);
		return list.get(0).intValue();
	}

	@Override
	public List<CrmCourseType> findAll(String condition, Object[] params, int startIndex, int pageSize) {
		String hql = "from CrmCourseType where 1=1 " + condition;
		return this.getHibernateTemplate().execute(new PageHibernateCallback<CrmCourseType>().setHql(hql).setParams(params).setPageSize(pageSize).setStartIndex(startIndex));
	}

}
