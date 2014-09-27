<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>练习forward和dispatcher</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
<script type="text/javascript">
	$(function() {
		if ('' === window.name) {//首次进入该页面中时，window.name的值为空字符串，当刷新或回退时，都有值了
			window.name = '$other';
			var dialog = $('#adverseId').dialog();

			console.log(new Date().getMinutes() + '-' + new Date().getSeconds()
					+ '-' + new Date().getMilliseconds());
			setTimeout(function() {
				console.log(new Date().getMinutes() + '-'
						+ new Date().getSeconds() + '-'
						+ new Date().getMilliseconds());
				dialog.dialog('close');
			}, 3000);
			//setTimeout()方法用于在指定的毫秒数后调用函数或计算表达式，并且会在3000之后执行
		}
	});
</script>
</head>
<body>
	<div id="adverseId" title="广告">开始内容啦！</div>
	<a href="DispatcherServlet1?type=forward">forward</a>
	<a href="DispatcherServlet1?type=dispatcher">dispatcher</a>
</body>
</html>