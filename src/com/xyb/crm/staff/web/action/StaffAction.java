package com.xyb.crm.staff.web.action;

import java.util.List;

import org.apache.commons.lang3.StringUtils;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.xyb.crm.department.domain.CrmDepartment;
import com.xyb.crm.department.service.DepartmentService;
import com.xyb.crm.staff.domain.CrmStaff;
import com.xyb.crm.staff.service.StaffService;

public class StaffAction extends ActionSupport implements ModelDriven<CrmStaff> {

    private static final long serialVersionUID = -4268965173616954226L;
    //封装数据，必须创建VO 值对象，必须new，由GC回收
	private CrmStaff staff = new CrmStaff();
	@Override
	public CrmStaff getModel() {
		return staff ;
	}
	
	// 声明staffService对象并提供set方法，方便Spring配置进行IoC依赖注入
	private StaffService staffService;
	public void setStaffService(StaffService staffService) {
		this.staffService = staffService;
	}
	// 声明departmentService对象并提供set方法，方便Spring配置进行IoC依赖注入
	private DepartmentService departmentService;
    public void setDepartmentService(DepartmentService departmentService) {
		this.departmentService = departmentService;
	}
		
	/**
	 * 员工登录
	 * @return
	 */
	public String login(){
		// 1 查询员工
	    /**
	     * 1.根据当前action对象的CrmStaff Bean实例，调用staffService.login(参数)
	     */
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
	 * 查询所有员工
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
	public String addOrEditUI(){
	    System.out.println("跑到addorEditUI执行！");
		// 如果有id就是编辑，编辑需要查询详情
        if(StringUtils.isNotBlank(this.staff.getStaffId())){
            System.out.println("具备staffId，判定进行(自动查询后)编辑操作");
            // 将查询的详情压入到栈顶，方便标签自动的回显
            CrmStaff findStaff = this.staffService.findById(this.staff.getStaffId());
            // 将JavaBean对象findStaff压入值栈，供编辑JSP进行取出操作
            ActionContext.getContext().getValueStack().push(findStaff);
            System.out.println("将JavaBean对象findStaff压入值栈，供编辑JSP进行取出操作");
        } else {
            System.out.println("没有staffId，判定进行添加操作");
        }
        
        //不论添加还是编辑操作，都需要查询所有部门，用于回显
        /**
         * 2 查询所有部门
         * allDepartment保存所有的部门
         */
        List<CrmDepartment> allDepartment = departmentService.findAll();
        System.out.println(allDepartment);
        // JSP页面通过键"allDepartment"即可获得所有部门对象数据
        ActionContext.getContext().getValueStack().set("allDepartment", allDepartment);
        System.out.println("准备执行编辑UI操作！");
		return "addOrEditUI";
	}
	
	/**
	 * 编辑
	 * @return
	 */
	public String addOrEdit(){
		this.staffService.addOrEdit(staff);
		return "addOrEdit";
	}
}
