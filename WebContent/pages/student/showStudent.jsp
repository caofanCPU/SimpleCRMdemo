<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/css/sys.css" type="text/css" rel="stylesheet" />
</head>

<body class="emp_body">
 <table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td class="topg"></td>
  </tr>
</table>

<table border="0" cellspacing="0" cellpadding="0"  class="wukuang"width="100%">
  <tr>
    <td width="1%"><img src="${pageContext.request.contextPath}/images/tleft.gif"/></td>
    <td width="44%" align="left">[查看正式学员]</td>
   
    <td width="52%"align="right">
    	<!--<a href="listLog.html"><img src="${pageContext.request.contextPath}/images/button/find.gif" class="img"/></a>
        <a href="addLog.html"><img src="${pageContext.request.contextPath}/images/button/add.gif" class="img"/></a>~-->
        
       <!-- <a href="#"><img src="${pageContext.request.contextPath}/images/button/close.gif" class="img"/></a>
       <a href="javascript:void(0)" onclick="document.forms[0].submit()"><img src="${pageContext.request.contextPath}/images/button/save.gif" /></a>
       -->
       <a href="${pageContext.request.contextPath}/pages/student/listStudent.jsp">
       	<img src="${pageContext.request.contextPath}/images/button/tuihui.gif" />
       </a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>


<table width="88%" class="emp_table">
  <tr>
    <td width="80px" align="left">姓名：</td>
    <td width="200px" align="left">张三</td>
    <td></td>
  </tr>
  <tr>
    <td width="80px" align="left">状态：</td>
    <td align="left">
    	新生
    </td>
    <td></td>
  </tr>
  <tr>
    <td align="left">类别 ：</td>
    <td align="left" colspan="3">
    	java基础 
    </td>
    <td></td>
  </tr>
  <tr>
    <td align="left">班级：</td>
    <td align="left" colspan="3">
    	1期 
    </td>
  </tr>
</table>

</html>