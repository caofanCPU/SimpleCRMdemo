package com.itheima.crm.coursetype.dao;

import java.util.List;

import com.itheima.crm.coursetype.domain.CrmCourseType;

public interface CourseTypeDao {
	
	/**
	 * 查询所有
	 * @return
	 */
	public List<CrmCourseType> findAll();

	/**
	 * 条件查询
	 * @param condition ，格式：" and ..? and ..."
	 * @param params
	 * @return
	 */
	public List<CrmCourseType> findAll(String condition, Object[] params);
	
	/**
	 * 通过id查询详情
	 * @param courseTypeId
	 * @return
	 */
	public CrmCourseType findById(String courseTypeId);
	
	/**
	 * 保存或更新
	 * @param courseType
	 */
	public void saveOrUpdate(CrmCourseType courseType);

	/**
	 * 分页，查询总记录数
	 * @param condition
	 * @param params
	 * @return
	 */
	public int getTotalRecord(String condition, Object[] params);

	/**
	 * 分页，查询结果
	 * @param condition 条件
	 * @param params 条件实际参数
	 * @param startIndex 开始索引
	 * @param pageSize 每页显示个数
	 * @return
	 */
	public List<CrmCourseType> findAll(String condition, Object[] params, int startIndex, int pageSize);

}
