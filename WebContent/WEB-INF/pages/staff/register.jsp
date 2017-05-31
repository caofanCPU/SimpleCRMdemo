<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
	<TITLE></TITLE>
	<META http-equiv=Content-Type content="text/html; charset=utf-8">
	<META content="MSHTML 6.00.2600.0" name=GENERATOR>
	<LINK href="${pageContext.request.contextPath}/css/style.css" type=text/css rel=stylesheet>
	<STYLE>
	.cla1 {
	FONT-SIZE: 12px; COLOR: #4b4b4b; LINE-HEIGHT: 18px; TEXT-DECORATION: none
	}
	.login_msg{
		font-family:serif;
	}
	.login_msg .msg{
		background-color: #acf;
		font-family: 微软雅黑;
	}
	.login_msg .btn{
		background-color: #9be;
		width: 73px;
		font-size: 18px;
		font-family: 微软雅黑;
	}
	.register_title{
		font-size: 32px;
		font-family: 微软雅黑;
		color:#02d;
	}
	.login_msg_field{
		font-family: 微软雅黑;
	}
	</STYLE>
</HEAD>
<BODY leftMargin=0 topMargin=0 marginwidth="0" marginheight="0" background="${pageContext.request.contextPath}/images/rightbg.jpg">
	<div ALIGN="center">
		<table border="0" width="1140px" cellspacing="0" cellpadding="0" id="table1">
			<tr>
				<td height="93"></td>
				<td></td>
			</tr>
			<tr>
				<td background="${pageContext.request.contextPath}/images/right.jpg"  width="740" height="412"></td>
				<td class="login_msg" width="400">
					<form class="login_msg_field" action="${pageContext.request.contextPath}/html/frame.html">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<span class="register_title">新用户注册</span>
						<br/><br/>
						用<span style="opacity: 0;">0</span>户<span style="opacity: 0;">0</span>名：
						<input class="msg" type="text">
						<br/><br/>
						密<span style="opacity: 0;">空空</span>码：
						<input class="msg" type="password">
						<br/><br/>
						确认密码：
						<input class="msg" type="password">
						<br/><br/>
						姓<span style="opacity: 0;">空空</span>名：
						<input class="msg" type="text">
						<br/><br/>
						性<span style="opacity: 0;">空空</span>别：
						<select class="msg">
							<option>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;男</option>
							<option>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;女</option>
						</select>
						<br/><br/>
						出生日期：
						<input class="msg" type="text">
						<br/><br/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input class="btn" type="submit" value=" 注册 "/>						
						<input class="btn" type="button" value=" 取消 " onclick="document.location='${pageContext.request.contextPath}'"/>					
					</form>
				</td>
			</tr>
		</table>
	</div>
</BODY>
</HTML>