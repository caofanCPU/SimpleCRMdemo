package com.xyb.crm.staff.dao;

import java.util.List;

import com.xyb.crm.base.BaseDao;
import com.xyb.crm.staff.domain.CrmStaff;

public interface StaffDao extends BaseDao<CrmStaff>{
	/**
	 * 通过用户名和密码查询
	 * @param loginName
	 * @param loginPwd
	 * @return
	 */
	public CrmStaff find(String loginName ,String loginPwd);

	/*
	 * 继承BaseDao<CrmStaff>所获取的抽象方法
	public void save(T t);
    public void update(T t);
    public void delete(T t);
    public void saveOrUpdate(T t);
    
    public T findById(java.io.Serializable id);
    public List<T> findAll();
    */
	
}
