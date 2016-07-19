<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/util.js"></script>
<title>ajax学习</title>
<script>
window.onload=function(){
	document.getElementById("btn1").onclick=function(){
		//发出已补请求
		//1/得到xhr对象
		var xhr=getXHR();
		//2.注册状态变化监听器
		xhr.onreadystatechange=function(){
			if(xhr.readyState==4)
				{
				if(xhr.status==200)
					{
					alert("服务器响应了");
					document.getElementById("mytext").innerHTML=xhr.responseText;
					}
				}
		}
		//3.建立与服务器的连接
		xhr.open("GET","AjaxServlet"+"?time="+new Date().getTime());
		//4.向服务器发出请求
		xhr.send();
	}
}
</script>
</head>
<body>
<button id="btn1">点我呀</button>
${pageContext.request.contextPath}

<div id="mytext"></div>
</body>
</html>