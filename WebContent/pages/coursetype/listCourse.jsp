<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>

<link href="${pageContext.request.contextPath}/css/sys.css" type="text/css" rel="stylesheet" />

</head>

<body >
 <table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td class="topg"></td>
  </tr>
</table>

<table border="0" cellspacing="0" cellpadding="0"  class="wukuang"width="100%">
  <tr>
    <td width="1%"><img src="${pageContext.request.contextPath}/images/tleft.gif"/></td>
    <td width="39%" align="left">[课程类别]</td>
   
    <td width="57%"align="right">
		<a href="javascript:void(0)" onclick="javascript:document.forms[0].submit();">
			<img src="${pageContext.request.contextPath}/images/button/gaojichaxun.gif" />
		</a>      
    	<%--编辑前：添加类别 --%>
    	<a href="${pageContext.request.contextPath}/pages/coursetype/addOrEditCourse.jsp">
	       	<img src="${pageContext.request.contextPath}/images/button/tianjia.gif" />
    	</a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>


<%--条件查询 start --%>

<form action="${pageContext.request.contextPath}/coursetype/courseTypeAction_findAll.action" method="post">
	<table width="88%" border="0" class="emp_table" style="width:80%;">
	  <tr>
	    <td width="10%">课程类别：</td>
	    <td><input type="text" name="courseName" size="30" value="" /></td>
	  </tr>
	  <tr>
	    <td >课程简介：</td>
	    <td > <input type="text" name="remark" size="30" value="" /></td>
	  </tr>
	  <tr>  
	    <td >总学时：</td>
	    <td ><input type="text" name="totalStart" size="12" value="" />  至  <input type="text" name="totalEnd" size="12" value="" /></td>
	  </tr>
	  <tr>
	    <td>课程费用：</td>
	    <td ><input type="text" name="lessonCostStart" size="12" value="" /> 至 <input type="text" name="lessonCostEnd" size="12" value="" /></td>
	  </tr>
	</table>
</form>

<%--条件查询 end --%>

<table border="0" cellspacing="0" cellpadding="0" style="margin-top:5px;">
  <tr>
    <td ><img src="${pageContext.request.contextPath}/images/result.gif"/></td>
  </tr>
</table>
<table width="97%" border="1" >
  
  <tr class="henglan" style="font-weight:bold;">
    <td width="14%" align="center">名称</td>
    <td width="33%" align="center">简介</td>
    <td width="13%" align="center">总学时</td>
    <td width="18%" align="center">收费标准</td>
	<td width="11%" align="center">编辑</td>
  </tr>
  <%--数据展示，单行：tabtd1；双行：tabtd2 --%>
   <tr class="tabtd1">
	    <td align="center">java基础 </td>
	    <td align="center"> </td>
	    <td align="center">1000</td>
	    <td align="center">2000.0</td>
	  	<td width="11%" align="center">
	  		
	  		<a href="${pageContext.request.contextPath}/pages/coursetype/addOrEditCourse.jsp"><img src="${pageContext.request.contextPath}/images/button/modify.gif" class="img" /></a>
	  	</td>
	  </tr>
  
 
	  <tr class="tabtd2">
	    <td align="center">java就业 </td>
	    <td align="center"> </td>
	    <td align="center">4000</td>
	    <td align="center">18000.0</td>
	  	<td width="11%" align="center">
	  		
	  		<a href="${pageContext.request.contextPath}/pages/coursetype/addOrEditCourse.jsp"><img src="${pageContext.request.contextPath}/images/button/modify.gif" class="img" /></a>
	  	</td>
	  </tr>

 
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
