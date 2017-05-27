<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>

<link href="${pageContext.request.contextPath}/css/sys.css" type="text/css" rel="stylesheet" />

<body >
 <table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td class="topg"></td>
  </tr>
</table>

<table border="0" cellspacing="0" cellpadding="0"  class="wukuang"width="100%">
  <tr>
    <td width="1%"><img src="${pageContext.request.contextPath}/images/tleft.gif"/></td>
    <td width="39%" align="left">[在校学生管理]</td>
   
    <td width="57%"align="right">
    	<%--查询 
       <a href="javascript:void(0)" onclick="document.forms[0].submit();"><img src="${pageContext.request.contextPath}/images/button/gaojichaxun.gif" /></a>
    	--%>
    	<%--添加 
    	<s:a namespace="/student" action="studentAction_preAddOrEdit">
    		<img src="${pageContext.request.contextPath}/images/button/tianjia.gif" />
    	</s:a>
    	--%>
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
    <td width="8%" align="center">QQ</td>
    <td width="7%" align="center">联系电话</td>
    <td width="10%" align="center">以前的班级</td>
    <td width="10%" align="center">流失原因</td>
    <td width="11%" align="center">业务时间</td>
    <td width="12%" align="center">经办人</td>
    <td width="13%" align="center">是否退款</td>
    <%-- 
    <td width="6%" align="center">编辑</td>
    --%>
  </tr>
   <tr class="tabtd1">
		    <td align="center">王五</td>
		    <td align="center"></td>
		    <td align="center"></td>
		    <td align="center">1期</td>
		    <td align="center"></td>
		    <td align="center">2015-4-2 15:09:23</td>
		    <td align="center">管理员</td>
		    <td align="center">退款</td>
		    
		  </tr>
  
	   <tr class="tabtd2">
		    <td align="center">张三</td>
		    <td align="center">2342424</td>
		    <td align="center">13812341234</td>
		    <td align="center">1期</td>
		    <td align="center"></td>
		    <td align="center">2015-5-12 22:24:10</td>
		    <td align="center">管理员</td>
		    <td align="center">退款</td>
		    
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