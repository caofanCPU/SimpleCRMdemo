package com.xyb.crm.coursetype.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.engine.query.ParamLocationRecognizer;

import com.xyb.crm.coursetype.dao.CourseTypeDao;
import com.xyb.crm.coursetype.domain.CrmCourseType;
import com.xyb.crm.coursetype.service.CourseTypeService;
import com.xyb.crm.page.PageBean;

public class CourseTypeServiceImpl implements CourseTypeService {
    
    /**
     * 提供CourseTypeDao对象及其set方法，以便使用Spring配置供CourseTypeService依赖注入
     */
	private CourseTypeDao courseTypeDao;
	public void setCourseTypeDao(CourseTypeDao courseTypeDao) {
		this.courseTypeDao = courseTypeDao;
	}
	
	/**
	 * 简单的查询所有
	 * 1.在点击"课程类别"按钮时，执行查询所有，展现在页面
	 * 2.输入参数，空参
	 * 3.调用.findAll()执行查询所有操作，获得List<CrmCourseType>
	 * 4.返回List<CrmCourseType>
	 */
	@Override
	public List<CrmCourseType> findAll() {
		return courseTypeDao.findAll();
	}
	
	/**
	 * 高级查询
	 * 1.页面填写的查询条件会逐一封装为courseType实例
	 * 2.查询条件属于  and 操作
	 * 3.拼凑查询条件语句，使用StringBuilder
	 * 4.注意语句添加模式：[空格]add[空格]字段[空格]like模糊查询|>=|<=|(between start and end)等
	 * 5.StringUtils工具属于"org.apache.commons.lang3.StringUtils"包，能过滤查询条件为空
	 * 6.返回由查询条件+参数得到的List<CrmCourseType>集合
	 */
	@Override
	public List<CrmCourseType> findAll(CrmCourseType courseType) {
		//1.1 拼凑查询条件
		StringBuilder builder = new StringBuilder();
		//1.2 拼凑实际参数 , 可以重复，顺序 --> List
		List<Object> paramsList = new ArrayList<Object>();
		
		//2 过滤条件
		/**
		 *  2.1   * 课程类别，使用【模糊查询】
		 *        * courseName字段值非空，查询条件命令append" and courseName like ?"
		 *        *                    对应查询命令参数add"%"+courseName字段值+"%"
		 */
		if(StringUtils.isNotBlank(courseType.getCourseName())){
			builder.append(" and courseName like ?");
			paramsList.add("%"+courseType.getCourseName()+"%");
		}
		/**
		 *  2.2   * 课程简介，使用【模糊查询】
		 *        * remark字段值非空，查询条件命令append(" and remark like ?")
		 *        *               对应查询条件参数add("%"+remark字段值+"%")
		 */
		if(StringUtils.isNotBlank(courseType.getRemark())){
			builder.append(" and remark like ?");
			paramsList.add("%"+courseType.getRemark()+"%");
		}
		/**
		 *  2.3   * 总学时，使用【起止独立范围Integer数值类型查询】
		 *        * totalStart字段值非空，查询条件命令append(" and total >= ?")
		 *        *                    对应查询条件参数add(Integer.parseInt(totalStart字段值))
		 *        * totalEnd字段值非空，查询条件命令append(" and total <= ?")
         *        *                    对应查询条件参数add(Integer.parseInt(totalEnd字段值))
         * ---------------------------------------------------------------------------      
         *        * 之所以分开起止，是因为方便用户随意输入查询条件
         *        *      只有开始，那就判定>=
         *               只有结束，那就判定<=
         *               当且仅当用户同时输入起始，才可考虑合并，即可使用between and
         *        * 若使用between and，其形式如下
         *        *      查询条件命令append(" and total between ? and ?")
         *        *      对应查询参数add(Integer.parseInt(totalStart字段值)).add(Integer.parseInt(totalEnd字段值))
		 */
		if(StringUtils.isNotBlank(courseType.getTotalStart())){
			builder.append(" and total >= ?");
			paramsList.add(Integer.parseInt(courseType.getTotalStart()));
		}
		if(StringUtils.isNotBlank(courseType.getTotalEnd())){
			builder.append(" and total <= ?");
			paramsList.add(Integer.parseInt(courseType.getTotalEnd()));
		}
		/**
		 *  2.4   * 课程费用，同2.3总学时查询
		 */
		if(StringUtils.isNotBlank(courseType.getCourseCostStart())){
			builder.append(" and courseCost >= ?");
			paramsList.add(Double.parseDouble(courseType.getCourseCostStart()));
		}
		if(StringUtils.isNotBlank(courseType.getCourseCostEnd())){
			builder.append(" and courseCost <= ?");
			paramsList.add(Double.parseDouble(courseType.getCourseCostEnd()));
		}
				
		//3 调用dao层执行Hibernate数据库操作
		/**
		 *  1.查询条件String condition, 格式：" and ..? and ..."
		 *  2.对应查询参数Object[] params
		 *  3.调用.findAll(condition, params)执行高级查询，获得List<CrmCourseType>
		 *  4.将List<CrmCourseType>返回
		 */
		String condition = builder.toString();
		Object[] params = paramsList.toArray();		
		return courseTypeDao.findAll(condition, params);
	}
	
	/**
	 * 1.输入参数，courseTypeId
	 * 2.调用.findById(courseTypeId)，获得此courseTypeId对应的CrmCourseType对象
	 * 3.CrmCourseType对象
	 */
	@Override
	public CrmCourseType findById(String courseTypeId) {
		return this.courseTypeDao.findById(courseTypeId);
	}
	
	/**
	 * 1.输入参数，CrmCourseType对象
	 * 2.调用.saveOrUpdate(courseType)，由Hibernate底层根据是否具有OID决定是save操作还是update操作
	 * 3.无返回
	 */
	@Override
	public void addOrEdit(CrmCourseType courseType) {
		this.courseTypeDao.saveOrUpdate(courseType);
	}
	
	/**
	 * 分页查询
	 */
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
		//3 调用dao层执行Hibernate数据库操作
        /**
         *  1.查询条件String condition, 格式：" and ..? and ..."
         *  2.对应查询参数Object[] params
         *  3.
         *  4.
         */
		String condition = builder.toString();
		Object[] params = paramsList.toArray();
		
		//4分页
		//4.1 总记录数
		int totalRecord = this.courseTypeDao.getTotalRecord(condition,params);
		//4.2 创建对象
		PageBean<CrmCourseType> pageBean = new PageBean<CrmCourseType>(pageNum, pageSize, totalRecord);
		//4.3 分页数据
		List<CrmCourseType> data = this.courseTypeDao.findAll(condition, params,pageBean.getStartIndex(),pageBean.getPageSize());
		pageBean.setData(data);
		
		return pageBean;
	}

}
