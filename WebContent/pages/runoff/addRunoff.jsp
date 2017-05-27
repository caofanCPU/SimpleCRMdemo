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
    <td width="44%" align="left">[添加流失学员]</td>
   
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

<form action="${pageContext.request.contextPath}/pages/student/showStudent.jsp" method="post">
	<!--  -->
	<input type="hidden" name="crmStudent.studentId" value="402881e84d47ffc9014d481b53860002" id="runoffAction_add_crmStudent_studentId"/>
	<table width="88%" class="emp_table">
	  <tr>
	    <td width="120px" align="left">学生姓名：</td>
	    <td width="200px" align="left">张三 </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td width="120px" align="left">是否退款：</td>
	    <td width="200px" align="left">
	    	<select name="isRefund" id="runoffAction_add_isRefund">
    <option value="1">退款</option>
    <option value="0">不退</option>


</select>

	    </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td width="120px" align="left">退款金额：</td>
	    <td width="200px" align="left">
	    	<input type="text" name="refundAmount" value="" id="runoffAction_add_refundAmount"/>
	    </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td width="120px" align="left">描述：</td>
	    <td width="200px" align="left">
	    	<textarea name="remark" cols="20" rows="4" id="runoffAction_add_remark"></textarea>
	    </td>
	    <td>&nbsp;</td>
	  </tr>
	</table>
</form>

</html>