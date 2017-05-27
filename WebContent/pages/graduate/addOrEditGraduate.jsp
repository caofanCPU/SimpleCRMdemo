<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
    <td width="44%" align="left">[添加学员就业信息]</td>
   
	<td width="52%"align="right">
    	<!-- 添加 -->
		<a href="javascript:void(0)" onclick="document.forms[0].submit()">
			<img src="${pageContext.request.contextPath}/images/button/save.gif" />
		</a>
		<a href="#"><img src="${pageContext.request.contextPath}/images/button/tuihui.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>

<form action="${pageContext.request.contextPath}/pages/graduate/listGraduate.jsp" method="post">
	<table width="88%" border="0" class="emp_table" style="width:80%;">
	  <tr>
	    <td width="9%">班级：</td>
	    <td width="19%">
	    	
	    	<select name="crmStudent.crmClass.classId"  onchange="changeStudent(this)">
			    <option value="">--选择班级--</option>
			    <option value="2c9091c14c78e58b014c78e8cc62000a">1期</option>
			    <option value="2c9091c14c78e58b014c78e9106e000b">2期</option>
			    <option value="2c9091c14c78e58b014c78e9601a000c">1期ee</option>
			</select>

	    </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td width="9%">学生：</td>
	    <td width="19%"><select id="studentSelectId" name="crmStudent.studentId" ><option>--选择学生--</option></select></td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td>就业公司：</td>
	    <td><input type="text" name="companyName" value="" /> </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td>薪资：</td>
	    <td><input type="text" name="salary" value="" /> </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td>岗位：</td>
	    <td><input type="text" name="post" value="" />  </td>
		<td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td>入职时间：</td>
	    <td><input type="text" name="entryTime" value="" readonly="readonly"  onfocus="c.showMoreDay=true; c.show(this);"/> </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td>备注：</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td colspan="3">
	    	<textarea name="remark" cols="60" rows="10" id="graduateAction_addOrEdit_remark"></textarea>
	    </td>
	  </tr>
	</table>
</form>



</html>