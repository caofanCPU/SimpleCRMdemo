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
    <td width="44%" align="left">[升级/转班操作]</td>
   
    <td width="52%"align="right">
    	<!--<a href="listLog.html"><img src="${pageContext.request.contextPath}/images/button/find.gif" class="img"/></a>
        <a href="addLog.html"><img src="${pageContext.request.contextPath}/images/button/add.gif" class="img"/></a>~-->
        
       <!-- <a href="#"><img src="${pageContext.request.contextPath}/images/button/close.gif" class="img"/></a>-->
       <a href="javascript:void(0)" onclick="document.forms[0].submit()"><img src="${pageContext.request.contextPath}/images/button/save.gif" /></a>
       <a href="#"><img src="${pageContext.request.contextPath}/images/button/tuihui.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>

<form action="/crm2/station/stationAction_add.action" method="post">

	<table width="88%" class="emp_table">
	  <tr>
	    <td width="80px" align="left">姓名：</td>
	    <td width="200px" align="left">张三</td>
	    <td></td>
	  </tr>
	  <tr>
	    <td width="80px" align="left">现在所在班级：</td>
	    <td width="200px" align="left">类别java基础 ，班级1期 </td>
	    <td></td>
	  </tr>
	  <tr>
	    <td width="100px" align="left">操作类型：</td>
	    <td width="400px" align="left">
	    	<select name="flag" >
			    <option value="3">升级</option>
			    <option value="2">转班</option>
			    <option value="1">新生</option>
			    <option value="5">退费</option>
			    <option value="4">毕业</option>
			</select>

	    </td>
	    <td></td>
	  </tr>
	  <tr>
	    <td>操作学科：</td>
	    <td>
	    	<select name="crmCourseType.courseTypeId" onchange="">
			    <option value="">----请--选--择----</option>
			    <option value="2c9091c14c78e58b014c78e829b70008">java基础</option>
			    <option value="2c9091c14c78e58b014c78e867b80009">java就业</option>
			</select>

	    	&nbsp;&nbsp;&nbsp;操作班级：
    		<select name="afterClass.classId" id="classSelectId">
			    <option value="">----请--选--择----</option>
			</select>
	    </td>
	    <td>&nbsp;</td>
	</table>
</form>
</html>