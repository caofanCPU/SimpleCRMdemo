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
    <td width="44%" align="left">[查看咨询学生]</td>
   
    <td width="52%"align="right">
       <%--退回 --%>
       <a href="${pageContext.request.contextPath}/pages/refer/listRefer.jsp?status=1">
       		<img src="${pageContext.request.contextPath}/images/button/tuihui.gif" />
       </a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>


<table width="89%" class="emp_table"    style="" align="left" cellspacing="0">
  <tr>
    <td width="120px" height="35" align="left" >姓名：</td>
    <td width="300px" align="left">张三 </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>电话：</td>
    <td>13812341234</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>QQ：</td>
    <td>2342424</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>咨询人：</td>
    <td>管理员</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>意向级别：</td>
    <td>A.马上报名</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>意向学科：</td>
    <td>java基础 &nbsp;&nbsp;&nbsp;意向班级：1期</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="41" align="left">来源：</td>
    <td align="left">1.QQ</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="left">备注：</td>
    <td align="left"></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
  <tr>
    <td>跟踪信息：</td>
    <td>
    	<a href="${pageContext.request.contextPath}/pages/follow/addOrEditFollow.jsp">添加跟踪</a>
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
  	
    <td colspan="3">
    	<table class="emp_table" style="width:70%; border:1px solid #CCC; margin-left:0" align="left">
	      <tr>
	        <td align="center">内容</td>
	        <td width="150px" align="center">时间</td>
	        <td width="80px" align="center">资源人员</td>
	      </tr>
	      <tr>
	        <td style="padding-left: 10px;">钱解决</td>
	        <td align="center">2015-05-12 08:15 </td>
	        <td align="center">管理员</td>
	      </tr>
      
	      <tr>
	        <td style="padding-left: 10px;">有问题，钱</td>
	        <td align="center">2015-05-12 08:15 </td>
	        <td align="center">管理员</td>
	      </tr>
	      
	    </table>
	</td>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
</table>


</body>
</html>