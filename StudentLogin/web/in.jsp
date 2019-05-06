<%@ page language="java" import="java.util.*"   pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!--<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD 	XHTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>学生用户登录</title>
		
        <meta charset="UTF-8">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		
		<script type="text/javascript">
			window.onload = function() {
				//获取登录按钮并给它绑定单击响应函数
				var submitBtnEle = document.getElementById("submitBtn");
				submitBtn.onclick = function() {
					//获取用户输入的用户名
					var userInputEle = document.getElementById("userInput");
					var userText = userInputEle.value;
					//获取用户输入的密码
					var pwdInputEle = document.getElementById("pwdInput");
					var pwdText = pwdInputEle.value;

					if(userText == "") {
						alert("用户名不能为空！");
						//取消跳转的默认行为
						return false;
					}
					if(pwdText == "") {
						alert("密码不能为空！");
						return false;
					}
				};
			};
		</script>
	</head>

	<body>
		<h3 align="center"><b>学生用户登录</b></h3>
		<form method="post" action="${pageContext.request.contextPath }/Customer_login.action">
			<center>
				<table>
					<tr>
						<td>用户名：</td>
						<td><input type="text" id="userInput" name="username" /></td>
					</tr>
					<tr>
						<td style="float: right;">密码：</td>
						<td><input type="password" id="pwdInput" name="password" /></td>
					</tr>
					<tr>
						<td style="float: right;"><input type="submit" id="submitBtn" value="登录" /></td>
						<td align="center"><input type="submit" id="submitBtn" value="重置" /></td>
					</tr>
				</table>
			</center>
			<s:property value="custName" />
		</form>
	</body>

</html>