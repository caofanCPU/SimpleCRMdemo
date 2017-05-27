<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/sys.css" type="text/css"/>
<title>班级管理</title>
</head>

<body>
<!--距离页面顶端5px-->
<table border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="topg"></td>
  </tr>
</table>
<form name="createForm" action="" method="post">
<table border="0" cellspacing="0" cellpadding="0" class="wukuang">
  <tr>
    <td width="1%"><img src="${pageContext.request.contextPath}/images/tleft.gif"/></td>
    <td width="20%" align="left">[班级管理]</td>
    <td width="42%"align="center">&nbsp;</td>
    <td width="36%"align="right">
    	<%--添加班级  /html/classesm/addClass.jsp--%>
    	<a href="${pageContext.request.contextPath}/pages/classesm/addOrEditClass.jsp">
    		<img src="${pageContext.request.contextPath}/images/button/tianjia.gif" class="img"/>
    	</a>
    	<%--高级查询 
        <a href="queryClass.html"><img src="${pageContext.request.contextPath}/images/button/gaojichaxun.gif" class="img"/></a>
    	--%>
    </td>
    <td width="1%"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>
</form>
<table border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="topg"></td>
  </tr>
</table>
<table border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td ><img src="${pageContext.request.contextPath}/images/result.gif"/></td>
  </tr>
</table>

<table width="97%" border="1">
<thead>
  <tr class="henglan" style="font-weight:bold;">
	<th width="150px" align="center">班级名称</th>
    <th width="200px" align="center">所属课程</th>
    <th width="80px" align="center">开班时间</th>
    <th width="80px" align="center">毕业时间</th>
    
    <th width="80px" align="center">状态</th>
    <th width="70px" align="center">学生总数</th>
    <th width="70px" align="center">升学数</th>
    <th width="70px" align="center">转班数</th>
    <th width="50px" align="center">编辑</th>
	<th width="50px" align="center">查看</th>
	<th align="center">课表</th>
  </tr>
  </thead>
  <tbody>
	  <tr class="tabtd2">
	    <td align="center">1期 </td>
	    <td align="center">java基础 </td>
	    <td align="center">2015-03-10</td>
	    <td align="center">2015-04-30</td>
	    <td align="center">已结束</td>
	    <td align="center">1 </td>
	    <td align="center">2 </td>
	    <td align="center">0 </td>
	    <td align="center">
	    	<a href="${pageContext.request.contextPath}/pages/classesm/addOrEditClass.jsp"><img src="${pageContext.request.contextPath}/images/button/modify.gif" class="img"/></a>
	    </td>
		<td align="center">
	    	<a href="${pageContext.request.contextPath}/pages/classesm/showClass.jsp"><img src="${pageContext.request.contextPath}/images/button/modify.gif" class="img"/></a>
		</td>
		<td align="center" title="上次上传时间：2015-04-02">   
			<a href="${pageContext.request.contextPath}/pages/classesm/uploadClass.jsp">上传</a>
			<a href="${pageContext.request.contextPath}/pages/classesm/downloadClass">下载</a> <br/>
		</td>
	  </tr>
	  <tr class="tabtd1">
	    <td align="center">2期 </td>
	    <td align="center">java基础 </td>
	    <td align="center">2015-04-28</td>
	    <td align="center">2015-05-27</td>
	    <td align="center">已开班</td>
	    <td align="center">0 </td>
	    <td align="center">0 </td>
	    <td align="center">0 </td>
	    <td align="center">
	    	<a href="${pageContext.request.contextPath}/classesm/classAction_preAddOrEdit.action?classId=2c9091c14c78e58b014c78e9106e000b"><img src="${pageContext.request.contextPath}/images/button/modify.gif" class="img"/></a>
	    </td>
		<td align="center">
	    	<a href="${pageContext.request.contextPath}/classesm/classAction_findById.action?classId=2c9091c14c78e58b014c78e9106e000b"><img src="${pageContext.request.contextPath}/images/button/modify.gif" class="img"/></a>
		</td>
		<td align="center" title="上次上传时间：">   
			<a href="${pageContext.request.contextPath}/classesm/classAction_preUpload.action?classId=2c9091c14c78e58b014c78e9106e000b">上传</a>
			暂无
		</td>
	  </tr>
  
  </tbody>
</table>


<table border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td align="right">
    	<span>第1/3页</span>
        <span>
        	<a href="#">[首页]</a>&nbsp;&nbsp;
            <a href="#">[上一页]</a>&nbsp;&nbsp;
            <a href="#">[下一页]</a>&nbsp;&nbsp;
            <a href="#">[尾页]</a>
        </span>
    </td>
  </tr>
</table>

</body>
</html>
