<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.odd{background-color:#c3f3c3;}
.even{background-color:#f3c3f3;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/util.js"></script>
<title>ajax用户名验证</title>
<script>

	window.onload = function() {

		document.getElementById("bt1").onclick = function() {
			
			
			//发出已补请求
			//1/得到xhr对象
			var xhr = getXHR();
			//2.注册状态变化监听器
			
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4) {
					if (xhr.status == 200) {
						document.getElementById("div1").innerHTML = xhr.responseText;
					}
				}
				
			}
			//3.建立与服务器的连接
			xhr.open("POST", "AjaxDemo2" + "?time=" + new Date().getTime());
			xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
			//4.向服务器发出请求
			xhr.send();
			
		}

	}
</script>
</head>
<body>
<button id="bt1">获取商品信息</button>
<div id="div1"></div>
</body>
</html>