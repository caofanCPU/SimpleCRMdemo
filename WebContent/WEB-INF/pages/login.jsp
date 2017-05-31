<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
	<TITLE>CRM系统</TITLE>
	<META http-equiv=Content-Type content="text/html; charset=utf-8">
	<LINK href="${pageContext.request.contextPath}/css/style.css" type=text/css rel=stylesheet>
	<META content="MSHTML 6.00.2600.0" name=GENERATOR>
	<STYLE>
		.clock {
			display: inline-block;
			vertical-align: middle;
			width: 300px;
			height: 300px;
			margin: 100px auto;
			background: url(${pageContext.request.contextPath}/images/clock.png) no-repeat;
			background-size: 100% 100%;
			position: relative;
		}
		.clock div {
			position: absolute;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
			background: url(${pageContext.request.contextPath}/images/hour.png) no-repeat center center;
			background-size: auto 100%;
		}
		#m {	
			background-image: url(${pageContext.request.contextPath}/images/minute.png);
		}
		#s {
			background-image: url(${pageContext.request.contextPath}/images/second.png);
		}
	</STYLE>
	<SCRIPT type="text/javaSCRIPT">
		if(self != top){
			top.location = self.location;
		}
	</SCRIPT>
</HEAD>
<BODY leftMargin=0 topMargin=0 marginwidth="0" marginheight="0" background="${pageContext.request.contextPath}/images/desktopbg.jpg">
<div ALIGN="center" style="margin: 10% auto; position: relative">
	<div class="clock" style="position: absolute; top: 0; left: 13%;">
	    <div id="h"></div>
	    <div id="m"></div>
	    <div id="s"></div>
	</div>
	<%-- 表单 --%>
	<div class="login_form" style="position: absolute; top: 110px; right: 30%;">
		<s:form namespace="/" action="staffAction_login" >	
			<img src="${pageContext.request.contextPath}/images/title.png" width="300px"/>			
			<font color="#ff0000" id="font">
				<s:fielderror></s:fielderror>
			</font> 
			用户名：
			<s:textfield name="loginName" cssClass="msg"></s:textfield>
			<br/><br/>
			密<span style="opacity: 0;">空</span>码：
			<s:password name="loginPwd" cssClass="msg" showPassword="true"></s:password>
			<br/><br/>
			<%-- s:reset和s:submit相当于input标签，可按照input标签设置样式 --%>
			<s:reset value="重置" cssClass="btn"></s:reset>&nbsp;&nbsp;
			<s:submit value="登录" cssClass="btn"></s:submit>
			
			<%--
			<table class="form_wrap">
				<tbody>
					<tr>
						<td>用户名：</td>
						<td>
							<s:textfield name="loginName" cssClass="msg">
							</s:textfield>
						</td>
					</tr>
					<tr>
						<td>密码：</td>
						<td><s:password name="loginPwd" cssClass="msg" showPassword="true"></s:password></td>
					</tr>
				</tbody>				
			</table>
			--%>
		</s:form>
	</div>
</div>
	
<SCRIPT type="text/javaSCRIPT">
	<%-- s标签中直接编写JavaSCRIPT代码时，不支持el表达式，只能提供单独的函数
	function registerUrl(){
		document.location='${pageContext.request.contextPath}/uiAction_staff_register';
	}
	--%>
	<%-- 加载并非显示，加载只是将页面元素载入内存  --%>
    window.onload = function() {
    	<%-- 获取秒针元素ss，分针元素mm，时针元素hh --%>
        var ss = document.getElementById("s");
        var mm = document.getElementById("m");
        var hh = document.getElementById("h");
        <%-- 获取当前系统时间time --%>
        var time = new Date();
        <%-- alert(time); --%>
        <%-- 获取当前系统时间的秒，存入s --%>
        var s = time.getSeconds();       
        var m = time.getMinutes();
        var h = time.getHours();

        <%-- 
            1.定时器(每过interval毫秒触发回调函数clock())，回调函数每执行一次，代表时间过去了rate秒
            2.时间过去rate秒，对于秒针值：s += rate
                              对于分针值：m += rate/60
                              对于时针值：h += rate/3600
            3.考虑时间的进制问题，对于秒针的绝对角度，s%60限定：秒针值范围[0, 59]
                  再进行角度转换：秒针绝对偏角为 ((s%60) / 60) * 360
                  同理，分针的绝对偏角为((m%60) / 60) * 360
                        时针的绝对偏角为((h%12) / 12) * 360
            4.根据秒针转动速率rate与页面刷新间隔interval的观察，采用公式：
                  指定rate，若rate >= 1，即时间快进，则interval = 1000
                            若rate <  1，即时间慢速，则interval = 100 * rate
        --%>
        var rate = 1;
        if (rate >= 1)
         {
            var interval = 1000;
         } else {
            var interval = 1000*rate;
         }

        <%-- 回调函数，由定时器触发调用 --%>
        function clock() {
            <%-- 计算秒针代表的s，取值范围[0, 59] --%>
            s = (s+rate) % 60;
            ss.style.transform = "rotate(" + s*6 + "deg)";
            <%-- 计算分针代表的m，取值范围[0, 59] --%>
            m = (m+rate/60) % 60;
            mm.style.transform = "rotate(" + m*6 + "deg)";
            <%-- 计算时针代表的h，取值范围[0, 11] --%>
            h = (h+rate/3600) % 12;
            hh.style.transform = "rotate(" + h*30 + "deg)";
            <%-- 在网页 F12，选择'控制台'，查看控制台追踪的日志信息 --%>
            console.log(s);
            console.log(m);
            console.log(h);
            console.log(ss);
            console.log(mm);
            console.log(hh);
        };

        <%-- 设置刷新间隔 --%>
        setInterval(clock, interval);
    };
</SCRIPT>
</BODY>
</HTML>