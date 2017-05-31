package com.xyb.crm.web.interceptor;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class LoginInterceptor extends MethodFilterInterceptor {

    private static final long serialVersionUID = -6416033550126436709L;

    @Override
	public String doIntercept(ActionInvocation invocation) throws Exception {
		
		//判断session作用域是否有用户信息，如果有放行，如果没有拦截。
		
		Object obj = ActionContext.getContext().getSession().get("loginStaff");
		if(obj == null){
			//**友好信息 start*//
			// 1 获得当前运行action
			Object action = invocation.getAction();
			// 2 判断运行时是否是ActionSupport
			if(action instanceof ActionSupport){
				ActionSupport actionSupport = (ActionSupport) action;
				actionSupport.addFieldError("", "请登录");
			}
			//**友好信息 end*//
			
			// 没有登录，需要登录
			return "login";
		}
		
		//登录，放行
		return invocation.invoke();
	}

}
