<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>

<link href="${pageContext.request.contextPath}/css/sys.css" type="text/css" rel="stylesheet" />
</head>
 <table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td class="topg"></td>
  </tr>
</table>

<table border="0" cellspacing="0" cellpadding="0"  class="wukuang"width="100%">
  <tr>
    <td width="1%"><img src="${pageContext.request.contextPath}/images/tleft.gif"/></td>
    <td width="39%" align="left">[就业情况]</td>
   
    <td width="57%"align="right">
  		<%--高级查询 
       <a href="#"><img src="${pageContext.request.contextPath}/images/button/gaojichaxun.gif" /></a>
  		--%>
    	<%--添加 --%>
  		<a href="${pageContext.request.contextPath}/pages/graduate/addOrEditGraduate.jsp">
	  		<img src="${pageContext.request.contextPath}/images/button/tianjia.gif" />
  		</a>
      
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>
<table border="0" cellspacing="0" cellpadding="0" style="margin-top:5px;">
  <tr>
    <td ><img src="${pageContext.request.contextPath}/images/result.gif"/></td>
  </tr>
</table>


<table width="100%" border="1" >
  
  <tr class="henglan" style="font-weight:bold;">
    <td width="6%" align="center">学生姓名</td>
    <td width="6%" align="center">就读班级</td>
    <td width="15%" align="center">就业公司</td>
    <td width="12%" align="center">薪资</td>
    
    <td width="15%" align="center">岗位</td>
    <td width="12%" align="center">入职时间</td>
    <td width="12%" align="center">描述</td>
    
    <td width="7%" align="center">编辑</td>
  </tr>
  
	 <tr class="tabtd2">
	    <td align="center">张三 </td>
	    <td align="center">1期ee </td>
	    <td align="center">黑马 </td>
	    <td align="center">99999 </td>
	    
	    <td align="center">java高级工程师 </td>
	    <td align="center">2015-05-14 </td>
	    <td align="center">手动方式 </td>
	    
	  	<td width="7%" align="center">
	  		<a href="${pageContext.request.contextPath}/pages/graduate/addOrEditGraduate.jsp"><img src="${pageContext.request.contextPath}/images/button/modify.gif" class="img" /></a>
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