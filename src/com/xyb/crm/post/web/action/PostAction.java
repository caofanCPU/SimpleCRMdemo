package com.xyb.crm.post.web.action;

import java.io.IOException;
import java.util.List;
import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;
import org.apache.struts2.ServletActionContext;
import org.junit.Test;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.xyb.crm.department.domain.CrmDepartment;
import com.xyb.crm.post.domain.CrmPost;
import com.xyb.crm.post.service.PostService;

public class PostAction extends ActionSupport implements ModelDriven<CrmPost> {

    private static final long serialVersionUID = 1934923152014926178L;
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
	
	private CrmDepartment department;	
	public void setDepartment(CrmDepartment department) {
        this.department = department;
    }

    /**
	 * 1.使用Ajax，通过部门(底层是部门ID)，查询所有的职务(对象)
	 * 2.获取的职务对象先转换成json数据对象，也就是json字符串，准备发送给浏览器的Ajax引擎
	 * 3.注意：一定要解决响应时的中文乱码
	 * 4.将json字符串流发送给Ajax引擎，浏览器自行处理
	 * 5.返回"none"，无需跳转或转发等结果视图
	 * @return
	 * @throws IOException 
	 */
	public String findAllWithDepartment() throws IOException{
		// 1 查询
	    System.out.println(post.getDepartment().getDepId());
		List<CrmPost> allPost = this.postService.findAll(post.getDepartment());
		System.out.println("***************************************\n\n\n"
		                    + allPost.size()
		                    + "\n\n\n***************************************");
		/**
		 * 默认情况下，JSONArray.fromObject(allPost).toString()将进行如下操作
		 * 1.遍历allPost(这是一个List<CrmPost>集合)
		 * 2.对于每个CrmPost对象，按照其默认的toString()方法，准备载入每个属性字段名及属性字段值
		 * 3.由于CrmPost对象中具有属性字段CrmDepartment类型的字段department，将执行CrmDepartment的toString()方法
		 * 4.而CrmDepartment又具有Set<CrmPost>类型的字段postSet，将遍历postSet集合，执行每个CrmPost对象的toString()方法
		 * 5.如此，便形成了死循环："职务找部门，部门找职务"
		 * 6.启示：正因为职务与部门进行了关联，(职务与员工也关联了)，所以才形成这种现象
		 *        而本方法目的只需要获取CrmPost对象：字段职务ID，字段职务名称
		 *        排除掉department，staffSet就可解决死循环问题
		 * 7.凡是具有关联的数据表对象，都应考虑进行Jsonconfig配置，过滤掉数据表对象不需要的字段
		 */
	    // 2 将java对象 转换 json数据      
        // 2.1 排除不需要数据
		JsonConfig jsonConfig = new JsonConfig();
		//排除掉数据表对象不需要的属性字段
		jsonConfig.setExcludes(new String[]{"department", "staffSet"});
		// 2.2 转换
		String jsonData = JSONArray.fromObject(allPost, jsonConfig).toString();	
		// 3 将json数据发送给浏览器
		// 3.1 响应中文乱码
		ServletActionContext.getResponse().setContentType("text/html;charset=UTF-8");
		// 3.2 发送
		ServletActionContext.getResponse().getWriter().print(jsonData);		
		return "none";
	}

	/**
	 * 测试JSP页面使用ajax引擎发送请求参数是否成功
	 * @return
	 */
	public String findTest() {
	    System.err.println("*********************************\n\nMLGBZ!!!!\n\n");
	    System.out.println("*********************************\n"
	                        +"从Ajax获取的参数如下：" + post.getPostTest()
	                        + "\n*********************************");
	    return "none";
	}
	
	@Test
	public void testAjaxPO() {
	    CrmPost testPO = new CrmPost();
	    String depId = "";
	    testPO.getDepartment().setDepId(depId);
	    System.out.println(testPO.getDepartment().getDepId());
	}
}
