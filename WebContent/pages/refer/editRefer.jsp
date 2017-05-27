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
    <td width="44%" align="left">[添加/编辑咨询学生]</td>
   
    <td width="52%"align="right">
       <%--保存 --%>
       <a href="javascript:void(0)" onclick="document.forms[0].submit()"><img src="${pageContext.request.contextPath}/images/button/save.gif" /></a>
       <a href="#"><img src="${pageContext.request.contextPath}/images/button/tuihui.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>

<form action="${pageContext.request.contextPath}/pages/refer/listRefer.jsp?status=1" method="post">
	<table width="89%" class="emp_table"    style="" align="left" cellspacing="0">
	  <tr>
	    <td width="120px" height="35" align="left" >姓名：</td>
	    <td width="300px" align="left">
	    	<input type="text" name="name" value="张三"/>
	    </td>
	    <td>
	    	
	    </td>
	  </tr>
	  <tr>
	    <td>电话：</td>
	    <td><input type="text" name="telephone" value="13812341234" /> </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td>QQ：</td>
	    <td><input type="text" name="qq" value="2342424" /></td>
	    <td>&nbsp;</td>
	  </tr>
	  
	  <tr>
	    <td>意向级别：</td>
	    <td>
	    	<select name="intentionLevel" >
			    <option value="">--请选择意向级别--</option>
			    <option value="A.马上报名" selected="selected">A.马上报名</option>
			    <option value="B.想报名，考虑中">B.想报名，考虑中</option>
			    <option value="C.有报名集合，但暂时不能报名">C.有报名集合，但暂时不能报名</option>
			    <option value="D.不能报名，以及其他原因">D.不能报名，以及其他原因</option>
			</select>

	    </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td>意向学科：</td>
	    <td>
	    	<select name="crmCourseType.courseTypeId" onchange="">
			    <option value="">----请--选--择----</option>
			    <option value="2c9091c14c78e58b014c78e829b70008" selected="selected">java基础</option>
			    <option value="2c9091c14c78e58b014c78e867b80009">java就业</option>
			</select>

	    	&nbsp;&nbsp;&nbsp;意向班级：
	    	
		    	<select name="crmClass.classId">
				    <option value="">----请--选--择----</option>
				    <option value="2c9091c14c78e58b014c78e8cc62000a" selected="selected">1期</option>
				    <option value="2c9091c14c78e58b014c78e9106e000b">2期</option>
				</select>

	    	
	    	
	    </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td height="41" align="left">来源：</td>
	    <td align="left">
	    	<select name="source" >
			    <option value="">--请选择来源--</option>
			    <option value="1.QQ" selected="selected">1.QQ</option>
			    <option value="2.电话咨询">2.电话咨询</option>
			    <option value="3.上门">3.上门</option>
			    <option value="4.其他（老学员介绍）">4.其他（老学员介绍）</option>
			</select>

	    	
	    </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td align="left">备注：</td>
	    <td align="left">
	    	<textarea name="remark" cols="60" rows="5" ></textarea>
	    </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td colspan="3">&nbsp;</td>
	  </tr>
	</table>
</form>

</body>
</html>
