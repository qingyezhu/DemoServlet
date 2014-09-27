<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Servlet练习传参（中文乱码）以及传递方式（get/post）以及跳转</title>
<script type="text/javascript">

	function formLoad(){
		var form = document.forms[0];
		form.formMethod[0].checked = true;
	}
	
	function getRadio(form){
		for(var i = 0,len = form.formMethod.length;i < len;i ++){
			if(form.formMethod[i].checked){
				form.method = form.formMethod[i].value;
				return;
			}
		}
	}
	
	function formSubmit(){
		var form = document.forms[0];
		getRadio(form);
		form.submit();
	}
</script>
</head>
<body onload="formLoad()">

	<div>
		<h1>get方式</h1>
		<form action="${pageContext.request.contextPath}/FormServlet" method="get">
			<div>
				<label>姓名</label> 
				<input name="username" type="text">
			</div>
			<div>
				<label>年龄段：</label> 
				<select name="ageGroup">
					<option value="0">18-22岁</option>
					<option value="1">23-25岁</option>
					<option value="2">26-29岁</option>
					<option value="3">30-35岁</option>
				</select>
			</div>
			<div>
				<label>爱好</label> 
				<input name="hobby" type="checkbox" value="足球">足球
				<input name="hobby" type="checkbox" value="篮球">篮球
				<input name="hobby" type="checkbox" value="羽毛球">羽毛球
				<input name="hobby" type="checkbox" value="乒乓球">乒乓球
				<input name="hobby" type="checkbox" value="游泳">游泳
				<input name="hobby" type="checkbox" value="登山">登山
			</div>
			<div>
				<label>提交方式：</label> 
				<input type="radio" name="formMethod" value="get">get方式
				<input type="radio" name="formMethod" value="post">post方式
			</div>
			<div>
				<input type="button" value="提交" onclick="formSubmit()">
			</div>
			<a href="FormServlet?username=<%=URLEncoder.encode("青叶竹","GBK")%>">点击跳转</a>
		</form>
	</div>

</body>
</html>