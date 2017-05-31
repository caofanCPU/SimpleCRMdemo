package com.xyb.crm.coursetype.web.action;

import org.apache.commons.lang3.StringUtils;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.xyb.crm.coursetype.domain.CrmCourseType;
import com.xyb.crm.coursetype.service.CourseTypeService;
import com.xyb.crm.page.PageBean;

public class CourseTypeAction extends ActionSupport implements ModelDriven<CrmCourseType> {

    private static final long serialVersionUID = -4460981847476486497L;
    //封装数据，必须实例化courseType Bean对象
	private CrmCourseType courseType = new CrmCourseType();
	@Override
	public CrmCourseType getModel() {
		return courseType ;
	}
	//声明service实例并提供set方法，方便Spring配置IoC注入service实例
	private CourseTypeService courseTypeService;
	public void setCourseTypeService(CourseTypeService courseTypeService) {
		this.courseTypeService = courseTypeService;
	}
	
	//分页数据
	private int pageNum = 1;
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	private int pageSize = 3;  //每个分页能容纳的最大记录条数，固定值
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	/**
	 * 查询所有
	 * @return
	 */
	public String findAll(){
		/*1简单查询
		List<CrmCourseType> allCourseType = this.courseTypeService.findAll();
		// * 查询结果存在值栈 , jsp 通过“#key”获得
		ActionContext.getContext().put("allCourseType", allCourseType);
		*/
		
		/*2 条件查询
		List<CrmCourseType> allCourseType = this.courseTypeService.findAll(courseType);
		ActionContext.getContext().put("allCourseType", allCourseType);
		 */
		
		//3 分页 + 条件
		PageBean<CrmCourseType> pageBean = this.courseTypeService.findAll(courseType, pageNum, pageSize);
		ActionContext.getContext().put("pageBean", pageBean);		
		return "findAll";
	}
	
	
	/**
	 * 添加或编辑显示jsp页面
	 * 1.如果courseType Bean对象具有courseTypeId，执行2进入编辑操作部分，否则执行4进入添加操作部分
	 * 2.调用service.findById(参数)，获取此courseTypeId对象对应的CourseType数据表对象
	 * 3.将CourseType数据表对象压入值栈栈顶
	 * 4.返回"addOrEditUI"结果，向浏览器转发返回：/WEB-INF/pages/coursetype/addOrEditCourse.jsp页面
	 * @return
	 */
	public String addOrEditUI(){
		//如果有id就是编辑，编辑需要查询详情
		if(StringUtils.isNotBlank(this.courseType.getCourseTypeId())){
			//将查询的详情压入到栈顶，方便标签自动的回显
			CrmCourseType findCourseType = this.courseTypeService.findById(this.courseType.getCourseTypeId());
			ActionContext.getContext().getValueStack().push(findCourseType);
		}		
		return "addOrEditUI";
	}
	
	/**
	 * 添加或编辑 功能
	 * 1.将CourseType Bean对象交予service进行addOrEdit(courseType)操作
	 * 2.返回结果"addOrEdit"，页面将重定向，进入findAll本类方法操作
	 * @return
	 */
	public String addOrEdit(){
		this.courseTypeService.addOrEdit(courseType);
		return "addOrEdit";
	}

}
