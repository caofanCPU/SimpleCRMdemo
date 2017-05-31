<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<HTML>
<HEAD>
	<META http-equiv=Content-Type content="text/html; charset=utf-8">
	<META content="MSHTML 6.00.2600.0" name=GENERATOR>
	<STYLE type=text/css>
		.cacher {
			BEHAVIOR: url(#default#userdata)
		}
	</STYLE>
	<SCRIPT type="text/javascript">
		var flag = false;
		function shift_status() {
			if (flag) {
				parent.main.cols="170,9,*";
				document.all.menuSwitch1.src = '${pageContext.request.contextPath}/images/ej1_30.gif';
			} else {
				parent.main.cols = "0,9,*";
				document.all.menuSwitch1.src = '${pageContext.request.contextPath}/images/ej1_32.gif';
			}
			flag = !flag;
		}
	</SCRIPT>
</HEAD>
<BODY onclick=shift_status() leftMargin=0 topMargin=0 style="margin: 0">
	<span class=cacher id=cacheData name="cacheData"></span>
	<table height="100%" cellSpacing=0 cellPadding=0 border=0>
		<tbody>
			<tr>
				<td id=menuSwitch style="CURSOR: hand" vAlign=center bgColor=#3391CF>
					<img id=menuSwitch1 src="${pageContext.request.contextPath}/images/ej1_30.gif" width=9>
				</td>
			</tr>
		</tbody>
	</table>
</BODY>
</HTML>
