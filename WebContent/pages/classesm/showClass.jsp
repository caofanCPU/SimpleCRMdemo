<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
    <td width="44%" align="left">[查看班级]</td>
   
    <td width="52%"align="right">
    	<!--<a href="listLog.html"><img src="${pageContext.request.contextPath}/images/button/find.gif" class="img"/></a>
        <a href="addLog.html"><img src="${pageContext.request.contextPath}/images/button/add.gif" class="img"/></a>~-->
        
       <!-- <a href="#"><img src="${pageContext.request.contextPath}/images/button/close.gif" class="img"/></a>-->
       <a href="javascript:void(0)" onclick="window.history.go(-1)"><img src="${pageContext.request.contextPath}/images/button/tuihui.gif" /></a>
      
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>

<table width="88%" border="0" class="emp_table" style="width:80%;">
  <tr>
    <td width="10%">班级名称：</td>
    <td width="20%">1期</td>
    <td width="8%">所属类别：</td>
    <td width="62%">java基础</td>
  </tr>
  <tr>
    <td>开课时间：</td>
    <td>2015-03-10</td>
    <td>结业时间：</td>
    <td>2015-04-30</td>
  </tr>
  <tr>
    <td>学生总数：</td>
    <td>1 </td>
    <td>升级数：</td>
    <td>2</td>
  </tr>
  <tr>
    <td>转班数：</td>
    <td>0 </td>
    <td>退费数：</td>
    <td>2</td>
  </tr>
  <tr>
    <td>其他说明：</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="4">
    	<textarea name="remark" cols="60" rows="10" id="remark"></textarea>
    </td>
  </tr>
  <tr>
    <td colspan="4"><br />学生明细：</td>
  </tr>
  <tr>
    <td colspan="4">
      <table width="65%" cellspacing="0" class="emp_table" style="width:65%; margin-top:5px; margin-left:0px; border:1px solid #CCC;">
      <tr>
        <td width="24%" align="center">状态</td>
        <td width="15%" height="29" align="center">姓名</td>
        <td width="17%" align="center">付费情况</td>
        <td width="17%" align="center">QQ</td>
        <td width="27%" align="center">联系电话</td>
      </tr>
	      <tr>
	        <td align="center">退费</td>
	        <td align="center">张三(男) </td>
	        <td align="center">
	        		<font color="#ff0000">132/1233</font>
	        </td>
	        <td align="center">2342424</td>
	        <td align="center">13812341234</td>
	      </tr>
      
	      <tr>
	        <td align="center">退费</td>
	        <td align="center">王五(男)</td>
	        <td align="center">已付清</td>
	        <td align="center"></td>
	        <td align="center"></td>
	      </tr>
    </table>
    </td>
  </tr>
</table>

</body>
</html>
