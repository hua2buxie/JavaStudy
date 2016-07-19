<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/util.js"></script>
<title>ajax用户名验证</title>
<script>

	window.onload = function() {

		document.getElementById("userName").onblur = function() {
			
			if(this.value=="")
				{
					alert("请输入用户名!");
					this.focus();
				}
			//发出已补请求
			//1/得到xhr对象
			var xhr = getXHR();
			//2.注册状态变化监听器
			
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4) {
					if (xhr.status == 200) {
						document.getElementById("msg").innerHTML = xhr.responseText;
					}
				}
				
			}
			//3.建立与服务器的连接
			xhr.open("POST", "AjaxDemo1" + "?time=" + new Date().getTime());
			xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
			//4.向服务器发出请求
			xhr.send("userName="+this.value);
			
		}

	}
</script>
</head>
<body>
<form action="AjaxDemo1" method="post">
		用户名:<input type="text" id="userName" name="userName" /><span id="msg"></span><br />
		密&nbsp;码:<input type="password" id="password"
			name="password" /><br /> <input type="submit" value="注册">
	</form>
</body>
</html>