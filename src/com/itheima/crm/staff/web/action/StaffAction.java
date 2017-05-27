package com.itheima.crm.staff.web.action;

import java.util.List;

import com.itheima.crm.department.domain.CrmDepartment;
import com.itheima.crm.department.service.DepartmentService;
import com.itheima.crm.staff.domain.CrmStaff;
import com.itheima.crm.staff.service.StaffService;
import com.opensymphony.xwork2.ActionChainResult;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.interceptor.annotations.InputConfig;

public class StaffAction extends ActionSupport implements ModelDriven<CrmStaff> {
	//封装数据
	private CrmStaff staff = new CrmStaff();
	@Override
	public CrmStaff getModel() {
		return staff ;
	}
	
	//默认按照名称注入
	// 员工
	private StaffService staffService;
	public void setStaffService(StaffService staffService) {
		this.staffService = staffService;
	}
	// 部门
	private DepartmentService departmentService;
	public void setDepartmentService(DepartmentService departmentService) {
		this.departmentService = departmentService;
	}
	
	
	/**
	 * 员工登录
	 * @return
	 */
	public String login(){
		//1 查询员工
	    
		CrmStaff findStaff = staffService.login(staff);
		System.out.println("执行用户登录数据库查询校验！");
		//2 是否成功
		if(findStaff != null){
			//成功
			// 3.1 session作用域保存数据
			ActionContext.getContext().getSession().put("loginStaff", findStaff);
			System.out.println("登陆校验成功！");
			// 3.2 重定向首页 -- xml配置
			return SUCCESS;
		} 
		
		//4 不成功
		this.addFieldError("", "用户名与密码不匹配");
		// * 请求转发显示
		return LOGIN;
	}
	
	/**
	 * 显示首页
	 * @return
	 */
	public String home(){
	    System.out.println("跑到home方法执行了！");
		return "home";
	}
	
	
	/**
	 * 查询所有
	 * @return
	 */
	public String findAll(){
		// 1查询所有
		List<CrmStaff> allStaff = staffService.findAllStaff();
		// 2 将结果存放到值栈，方便jsp获得数据
		// * 方式1：context (map)存放 put(key ,value) ，jsp页面获得 “#key” 。
		//		ActionContext.getContext().put(key, value)
		// * 方式2：root (值栈) ，push(obj) ，一般数据为JavaBean 或 Map ，jsp页面获得“属性名” 或“key”  。
		//		ActionContext.getContext().getValueStack().push(o)
		// * 方式3：root (值栈) ，set(key ,value) ,一般数据为List ，jsp页面获得“key”
		//		set() 底层 new Map(key,value) ，将 push(map )
		
		// 使用 context存放数据
		ActionContext.getContext().put("allStaff", allStaff);
			
		return "findAll";
	}
	
	/**
	 * 编辑前操作
	 * @return
	 */
	public String editUI(){
		//1 通过id查询员工
		CrmStaff findStaff = this.staffService.findById(staff.getStaffId());
		ActionContext.getContext().getValueStack().push(findStaff);
		
		//2 查询所有部门
		List<CrmDepartment> allDepartment = departmentService.findAll();
		// * jsp页面通过“key”获得
		ActionContext.getContext().getValueStack().set("allDepartment",allDepartment);
		
		return "editUI";
	}
	/**
	 * 编辑
	 * @return
	 */
	public String edit(){
		this.staffService.updateStaff(staff);
		return "edit";
	}

}
