<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/css/sys.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/Calendar.js"></script>
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
    <td width="44%" align="left">[课表上传]</td>
   
    <td width="52%"align="right">
    	<a href="javascript:void(0)" onclick="javascript:document.forms[0].submit();">
    		<img src="${pageContext.request.contextPath}/images/button/save.gif" />
    	</a>
       <a href="javascript:void(0)" onclick="history.go(-1)"><img src="${pageContext.request.contextPath}/images/button/tuihui.gif" /></a>
      
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>

<form action="/crm2/classesm/classAction_upload.action" method="post" enctype="multipart/form-data">
	<table width="88%" border="0" class="emp_table" style="width:80%;">
	  <tr>
	    <td width="120">课程类别：</td>
	    <td>java基础 </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td>班级：</td>
	    <td>1期 </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td>上次上传时间：</td>
	    <td>2015-04-02 </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td>选择课表：</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td colspan="3">
	    	<input type="file" name="schedule" value="" />
	    </td>
	  </tr>
	</table>
</form>

</body>
</html>
    