<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Enumeration e = request.getParameterNames();
	while (e.hasMoreElements()) {
		System.out.println("=====" + e.nextElement());
	}
	System.out.println("=========");
	e = request.getAttributeNames();
	while (e.hasMoreElements()) {
		System.out.println("------" + e.nextElement());
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>跳转结果页面</title>
</head>
<body>

</body>
</html>