package com.itheima.crm.coursetype.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.engine.query.ParamLocationRecognizer;

import com.itheima.crm.coursetype.dao.CourseTypeDao;
import com.itheima.crm.coursetype.domain.CrmCourseType;
import com.itheima.crm.coursetype.service.CourseTypeService;
import com.itheima.crm.page.PageBean;

public class CourseTypeServiceImpl implements CourseTypeService {

	private CourseTypeDao courseTypeDao;
	public void setCourseTypeDao(CourseTypeDao courseTypeDao) {
		this.courseTypeDao = courseTypeDao;
	}
	@Override
	public List<CrmCourseType> findAll() {
		return courseTypeDao.findAll();
	}
	@Override
	public List<CrmCourseType> findAll(CrmCourseType courseType) {
		//1.1 拼凑查询条件
		StringBuilder builder = new StringBuilder();
		//1.2 拼凑实际参数 , 可以重复，顺序 --> List
		List<Object> paramsList = new ArrayList<Object>();
		
		//2 过滤条件
		// 2.1 课程类别
		if(StringUtils.isNotBlank(courseType.getCourseName())){
			builder.append(" and courseName like ?");
			paramsList.add("%"+courseType.getCourseName()+"%");
		}
		// 2.2 课程简介
		if(StringUtils.isNotBlank(courseType.getRemark())){
			builder.append(" and remark like ?");
			paramsList.add("%"+courseType.getRemark()+"%");
		}
		// 2.3 总学时：
		if(StringUtils.isNotBlank(courseType.getTotalStart())){
			builder.append(" and total >= ?");
			paramsList.add(Integer.parseInt(courseType.getTotalStart()));
		}
		if(StringUtils.isNotBlank(courseType.getTotalEnd())){
			builder.append(" and total <= ?");
			paramsList.add(Integer.parseInt(courseType.getTotalEnd()));
		}
		// 2.4课程费用
		if(StringUtils.isNotBlank(courseType.getCourseCostStart())){
			builder.append(" and courseCost >= ?");
			paramsList.add(Double.parseDouble(courseType.getCourseCostStart()));
		}
		if(StringUtils.isNotBlank(courseType.getCourseCostEnd())){
			builder.append(" and courseCost <= ?");
			paramsList.add(Double.parseDouble(courseType.getCourseCostEnd()));
		}
		
		
		
		//3 使用
		// 条件 , 格式：" and ..? and ..."
		String condition = builder.toString();
		// 实际参数
		Object[] params = paramsList.toArray();
		
		return courseTypeDao.findAll(condition, params);
	}
	@Override
	public CrmCourseType findById(String courseTypeId) {
		return this.courseTypeDao.findById(courseTypeId);
	}
	@Override
	public void addOrEdit(CrmCourseType courseType) {
		this.courseTypeDao.saveOrUpdate(courseType);
	}
	@Override
	public PageBean<CrmCourseType> findAll(CrmCourseType courseType, int pageNum, int pageSize) {
		//1 条件查询
		//1.1 拼凑查询条件
		StringBuilder builder = new StringBuilder();
		//1.2 拼凑实际参数 , 可以重复，顺序 --> List
		List<Object> paramsList = new ArrayList<Object>();
		
		//2 过滤条件
		// 2.1 课程类别
		if(StringUtils.isNotBlank(courseType.getCourseName())){
			builder.append(" and courseName like ?");
			paramsList.add("%"+courseType.getCourseName()+"%");
		}
		// 2.2 课程简介
		if(StringUtils.isNotBlank(courseType.getRemark())){
			builder.append(" and remark like ?");
			paramsList.add("%"+courseType.getRemark()+"%");
		}
		// 2.3 总学时：
		if(StringUtils.isNotBlank(courseType.getTotalStart())){
			builder.append(" and total >= ?");
			paramsList.add(Integer.parseInt(courseType.getTotalStart()));
		}
		if(StringUtils.isNotBlank(courseType.getTotalEnd())){
			builder.append(" and total <= ?");
			paramsList.add(Integer.parseInt(courseType.getTotalEnd()));
		}
		// 2.4课程费用
		if(StringUtils.isNotBlank(courseType.getCourseCostStart())){
			builder.append(" and courseCost >= ?");
			paramsList.add(Double.parseDouble(courseType.getCourseCostStart()));
		}
		if(StringUtils.isNotBlank(courseType.getCourseCostEnd())){
			builder.append(" and courseCost <= ?");
			paramsList.add(Double.parseDouble(courseType.getCourseCostEnd()));
		}
		
		
		
		//3 使用
		// 条件 , 格式：" and ..? and ..."
		String condition = builder.toString();
		// 实际参数
		Object[] params = paramsList.toArray();
		
		////////////////////////////////////////////////////////////
		//2分页
		//2.1 总记录数
		int totalRecord = this.courseTypeDao.getTotalRecord(condition,params);
		//2.2 创建对象
		PageBean<CrmCourseType> pageBean = new PageBean<CrmCourseType>(pageNum, pageSize, totalRecord);
		//2.3 分页数据
		List<CrmCourseType> data = this.courseTypeDao.findAll(condition, params,pageBean.getStartIndex(),pageBean.getPageSize());
		pageBean.setData(data);
		
		return pageBean;
	}

}
