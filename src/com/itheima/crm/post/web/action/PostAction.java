package com.itheima.crm.post.web.action;

import java.io.IOException;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;

import org.apache.struts2.ServletActionContext;

import com.itheima.crm.post.domain.CrmPost;
import com.itheima.crm.post.service.PostService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class PostAction extends ActionSupport implements ModelDriven<CrmPost> {
	//封装数据
	private CrmPost post = new CrmPost();
	@Override
	public CrmPost getModel() {
		return post;
	}
	// service
	private PostService postService;
	public void setPostService(PostService postService) {
		this.postService = postService;
	}
	///////////////////////////////////////////////
	
	/**
	 * ajax 通过部门 ，查询所有的职务
	 * @return
	 * @throws IOException 
	 */
	public String findAllWithDepartment() throws IOException{
		//1 查询
		List<CrmPost> allPost = this.postService.findAll(post.getDepartment());
		
		//2 将java对象 转换 json数据
		
		//2.1 排除不需要数据
		JsonConfig jsonConfig = new JsonConfig();
		jsonConfig.setExcludes(new String[]{"department","staffSet"});
		//2.2 转换
		String jsonData = JSONArray.fromObject(allPost,jsonConfig).toString();
		
		//3 将json数据发送给浏览器
		//3.1 响应中文乱码
		ServletActionContext.getResponse().setContentType("text/html;charset=UTF-8");
		//3.2 发送
		ServletActionContext.getResponse().getWriter().print(jsonData);
		
		return "none";
	}
	
}
