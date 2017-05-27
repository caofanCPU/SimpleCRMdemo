package com.itheima.crm.base;

import java.util.List;

public interface BaseDao<T> {
	
	public void save(T t);
	public void update(T t);
	public void delete(T t);
	public void saveOrUpdate(T t);
	
	public T findById(java.io.Serializable id);
	public List<T> findAll();

}
