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
    <td width="44%" align="left">[添加/编辑正式学员]</td>
   
    <td width="52%"align="right">
       <a href="javascript:void(0)" onclick="document.forms[0].submit()"><img src="${pageContext.request.contextPath}/images/button/save.gif" /></a>
       <a href="#"><img src="${pageContext.request.contextPath}/images/button/tuihui.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>

<form action="${pageContext.request.contextPath}/pages/student/listStudent.jsp" method="post">
	<table width="88%" class="emp_table">
	  <tr>
	    <td width="100px" align="left">姓名：</td>
	    <td width="200px" align="left"><input type="text" name="name" value="张三"/> </td>
	    <td width="80px" align="left">性别：</td>
	    <td align="left">
	    	<input type="radio" name="gender" value="男"/>男
	    	<input type="radio" name="gender" value="女"/>女
	    </td>
	  </tr>
	  <tr>
	    <td align="left">应付学费：</td>
	    <td align="left"><input type="text" name="mustTuition" value=""/></td>
	    <td align="left">实付学费：</td>
	    <td align="left"><input type="text" name="actualTuition" value=""/></td>
	  </tr>
	  <tr>
	    <td align="left">身份证号：</td>
	    <td align="left"><input type="text" name="identity" value="" /></td>
	    <td align="left">手机号：</td>
	    <td align="left"><input type="text" name="telephone" value="13812341234"/></td>
	  </tr>
	  <tr>
	    <td align="left">QQ号：</td>
	    <td align="left"><input type="text" name="qq" value="2342424"/></td>
	    <td align="left">邮箱：</td>
	    <td align="left"><input type="text" name="email" value=""/></td>
	  </tr>
	  <tr>
	    <td align="left">就读班级：</td>
	    <td align="left" colspan="3">
	    	类别 <select name="crmClass.crmCourseType.courseTypeId" onchange="">
			    <option value="">--选择班级--</option>
			    <option value="2c9091c14c78e58b014c78e829b70008">java基础</option>
			    <option value="2c9091c14c78e58b014c78e867b80009">java就业</option>
			</select>

	    	班级<select name="crmClass.classId" id="classSelectId">
			    <option value="">----请--选--择----</option>
			</select>
	    </td>
	  </tr>
	  <tr>
	    <td align="left">毕业学校：</td>
	    <td align="left"><input type="text" name="school" value=""/></td>
	    <td align="left">学历：</td>
	    <td align="left">
	    	<select name="education">
			    <option value="">--选择学历--</option>
			    <option value="1.博士">1.博士</option>
			    <option value="2.研究生">2.研究生</option>
			    <option value="3.本科">3.本科</option>
			    <option value="4.大专">4.大专</option>
			    <option value="5.高中">5.高中</option>
			    <option value="6.初中">6.初中</option>
			    <option value="7.其他">7.其他</option>
			</select>

	    	专业<input type="text" name="professional" size="17" value="" />
	    </td>
	  </tr>
	  <tr>
	    <td align="left">身份证地址：</td>
	    <td align="left" colspan="3"><input type="text" name="identityAddress" size="60" value=""/></td>
	  </tr>
	  <tr>
	    <td align="left">在京地址：</td>
	    <td align="left" colspan="3"><input type="text" name="address" size="60" value=""/></td>
	  </tr>
	  <tr>
	    <td align="left">学员描述：</td>
	    <td align="left" colspan="3"><input type="text" name="remark" size="60" value=""/></td>
	  </tr>
	  <tr>
	    <td colspan="6"><br />出门在外，如果发生意外，我们将通过下面的信息跟学院的家长联系</td>
	    </tr>
	   <tr>
	    <td align="left">家庭联系电话：</td>
	    <td align="left"><input type="text" name="homeTelephone" value=""/></td>
	    <td align="left">家庭联系人：</td>
	    <td align="left"><input type="text" name="homeUser" value=""/></td>
	  </tr>
	</table>
</form>

</html>