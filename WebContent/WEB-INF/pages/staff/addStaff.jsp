<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> --%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>无标题文档</title>
	<link href="${pageContext.request.contextPath}/css/sys.css"
		  type="text/css" rel="stylesheet" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/Calendar.js"></script>
</head>

<body class="emp_body">
	<table border="0" cellspacing="0" cellpadding="0" width="100%">
		<tr>
			<td class="topg"></td>
		</tr>
	</table>

	<table border="0" cellspacing="0" cellpadding="0" class="wukuang" width="100%">
		<tr>
			<td width="1%">
				<img src="${pageContext.request.contextPath}/images/tleft.gif" />
			</td>
			<td width="44%" align="left">[员工管理]</td>
			<td width="52%" align="right">
				<%-- 提交表单 --%>
				<%-- 
					javascript:void(0)表示指定a标签不跳转
					document.forms表示获取当前页面的所有表单
					a标签指定不跳转，点击时触发提交表单forms[0]：页面的第一个表单操作
				--%>
				<a href="javascript:void(0)" onclick="document.forms[0].submit()">
					<img src="${pageContext.request.contextPath}/images/button/save.gif" />
				</a>
				<%-- 执行js，进行返回 --%>
				<%--
					javascript:void(0)指定a标签不跳转
					window.history.go(-1)，相当于浏览器的后退1步操作
				--%>
				<a href="javascript:void(0)" onclick="window.history.go(-1)">
					<img src="${pageContext.request.contextPath}/images/button/tuihui.gif" />
				</a>
			</td>
			<td width="3%" align="right">
				<img src="${pageContext.request.contextPath}/images/tright.gif" />
			</td>
		</tr>
	</table>
	<s:form namespace="/" action="staffAction_edit">
		<%--
			隐藏域，存放用户id
			value="%{staffId}"，%{staffId}声明强制使用OGLN表达式解析
		--%>
		<s:hidden name="staffId" value="%{staffId}"></s:hidden>
		<%--
			使用固定属性名称的Struts标签：
			id		 命名自定义标签创建时的脚本变量名
			name	 指出关键字值，在该关键字下可以找到一个存在的bean,
					 如果给出了scope属性，则仅仅在scope中查找;
					 否则，根据标准的顺序在各种scope中查找：(page, request, session, or application)
			property 指出bean 中的某个属性，可以在其中检索值。如果没有标明，则使用对象本身的值。
			scope：     定义了Bean在哪个范围(page, request, session, or application)中被查找,
					 如果没有标明按顺序查找，脚本变量(见id)将在相同的范围中创建。
		--%>
		<table width="88%" border="0" class="emp_table" style="width: 80%;">
			<tr>
				<td>登录名：</td>
				<%-- name="loginName"，代表当前对象(用户staff).name --%>
				<td>
					<s:textfield name="loginName"></s:textfield>
				</td>
				<td>密码：</td>
				<td>
					<%-- name="loginPwd"，代表当前对象(用户staff).loginPwd --%>
					<s:textfield name="loginPwd" showPassword="true"></s:textfield>
				</td>
			</tr>
			<tr>
				<td>姓名：</td>
				<td>
					<%-- name="staffName"，代表当前对象(用户staff).staffName --%>
					<s:textfield name="staffName"></s:textfield>
				</td>
				<td>性别：</td>
				<td>
					<%--
						1.s:radio标签，单选按钮
						2.list="{'男','女'}"，指定了集合
						3.name="gender"，代表当前对象(用户staff).gender
						4.当前对象(用户staff).gender自动与list集合中元素遍历匹配
						5.完全匹配成功，则回显
					--%>
					<s:radio list="{'男','女'}" name="gender"></s:radio>
			</tr>
			<tr>
				<td width="10%">所属部门：</td>
				<td width="20%">
					<%--
						1.s:select标签，选择标签
						2.list="allDepartment"，指定了集合为allDepartment集合对象(在值栈中寻找)
						3.name="post.department.depId"，代表当前对象(用户staff).post.department.depId
						    即：(((staff.职务)对象.部门)对象.部门Id)
						4.onchange="showPost(this)"，选择项发生改变即可触发执行showPost(this)脚本方法
						5.this代表当前：(((staff.职务)对象.部门)对象.部门Id)，即name="post.department.depId"
						6.listKey="depId"，代表回显的部门Id内容：depId
						7.listValue="depName"，代表回显的部门名称，并且listValue内容会显示在选择框中
						8.headerKey="" headerValue="----请--选--择----">，提供一个选择框内容参考提示
					--%>
					<s:select list="allDepartment" 
						onchange="showPost(this)"
						name="post.department.depId"
						listKey="depId" listValue="depName"
						headerKey="" headerValue="----请--选--择----">
					</s:select>
				</td>
				<td width="8%">职务：</td>
				<td width="62%">
					<%--
					1.id="postSelectId"，声明此处s:select标签关联了脚本变量"postSelectId"
					2.本JSP页面中，id="postSelectId"关联的正是Ajax(二级联动)脚本代码
					3.list="post != null ? post.department.postSet : {}"，指定"post"集合
					     该post集合由
					--%>
					<s:select
						id="postSelectId"
						list="post != null ? post.department.postSet : {}"
						name="post.postId"
						listKey="postId" listValue="postName"
						headerKey="" headerValue="----请--选--择----">
					</s:select>
				</td>
			</tr>
			<tr>
				<td width="10%">入职时间：</td>
				<td width="20%">
					<s:date name="onDutyDate" format="yyyy-MM-dd" var="formatDate" />
					<%-- 
						采用日历插件选取时间，需要将开头"<!DOCTYPE html PUBLIC..."注释掉
						否则日历插件将出现在文本框上边，出现问题
					--%>
					<s:textfield name="onDutyDate" readonly="true" value="%{#formatDate}"
						onfocus="c.showMoreDay=true;c.show(this);">
					</s:textfield>
				</td>
				<td width="8%"></td>
				<td width="62%"></td>
			</tr>
		</table>
	</s:form>
	<script type="text/javascript">
		/**
		 * 传入参数：obj
		 * 本JSP使用Ajax二级联动功能，因而传入的obj为指定staff.post.department.depId
		 */
		function showPost(obj) {
			//alert("哈哈，Ajax!");
			// 1 获得选中部门
			var depId = obj.value;
			/**
			 * 验证变量depId的数据类型为String
			 * alert(typeof(depId));
			*/
			// 2 发送ajax，通过部门查询职务
			// 2.1 获得引擎，使用if判断解决浏览器兼容问题
			var xmlhttp = null;
			if (window.XMLHttpRequest) {// code for all new browsers
				xmlhttp = new XMLHttpRequest();
			} else if (window.ActiveXObject) {// code for IE5 and IE6
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			// 2.2 设置回调函数
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					// 请求完成，正常响应
					// 3 获得数据，并展示 ,手动ajax 获得 json数据 字符串
					var textData = xmlhttp.responseText;
					alert(textData);
					// 3.1 将字符串 手动 转换 json对象
					var jsonData = eval("(" + textData + ")");
					// 获得select对象
					var postSelectElement = document.getElementById("postSelectId");
					postSelectElement.innerHTML = "<option value=''>----请--选--择----</option>";
					// 3.2 遍历
					for (var i = 0; i < jsonData.length; i++) {
						var postObj = jsonData[i];
						// 获得职务id
						var postId = postObj.postId;
						// 获得职务名称
						var postName = postObj.postName;
						// 3.3 将数显示到select标签
						postSelectElement.innerHTML += "<option value='"+postId+"'>"
								+ postName + "</option>";
					}
				}
			};
			// 2.3 创建连接
			// 浏览器请求postAction_findAllWithDepartment动作，携带参数
			var url = "${pageContext.request.contextPath}/"
					  + "postAction_findAllWithDepartment?department.depId=" + depId;
			/**
			 * 1.使用ajax进行二级菜单联动，ajax向服务器发送请求，请求携带字段名及字段参数
			 * 2.服务器端容易出现如下异常(错误)：服务器端action处理封装PO类时，找不到PO类相关的字段名，因而action方法无法执行
			 *   ajax引擎也不会接收到期望查询数据，而是接收到服务器端响应的html错误提示信息
			 * 3.服务器端报错提示：Cause by:  ognl.OgnlException: target is null for setProperty(null, "depId", [Ljava.lang.String;@3087b501])
			 * 4.使用如下测试代码：
			 *   var url = "${pageContext.request.contextPath}/"
			 *  	   + "postAction_findTest?postTest=" + depId;
			 * 5.服务器端也添加对应的"postAction_findTest"方法，PO类种添加字段postTest及其set/get方法
			 *   获取ajax发送的参数值 depId，输出到控制台
			 * 6.若服务器控制台能输出depId，则代表问题出现在PO类字段问题上
			 */
			
			xmlhttp.open("GET", url);
			// 2.4 发送请求
			xmlhttp.send(null);
		}
	</script>
</body>
</html>
