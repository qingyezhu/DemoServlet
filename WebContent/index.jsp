<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Servlet��ϰ���Σ��������룩�Լ����ݷ�ʽ��get/post���Լ���ת</title>
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
		<h1>get��ʽ</h1>
		<form action="${pageContext.request.contextPath}/FormServlet" method="get">
			<div>
				<label>����</label> 
				<input name="username" type="text">
			</div>
			<div>
				<label>����Σ�</label> 
				<select name="ageGroup">
					<option value="0">18-22��</option>
					<option value="1">23-25��</option>
					<option value="2">26-29��</option>
					<option value="3">30-35��</option>
				</select>
			</div>
			<div>
				<label>����</label> 
				<input name="hobby" type="checkbox" value="����">����
				<input name="hobby" type="checkbox" value="����">����
				<input name="hobby" type="checkbox" value="��ë��">��ë��
				<input name="hobby" type="checkbox" value="ƹ����">ƹ����
				<input name="hobby" type="checkbox" value="��Ӿ">��Ӿ
				<input name="hobby" type="checkbox" value="��ɽ">��ɽ
			</div>
			<div>
				<label>�ύ��ʽ��</label> 
				<input type="radio" name="formMethod" value="get">get��ʽ
				<input type="radio" name="formMethod" value="post">post��ʽ
			</div>
			<div>
				<input type="button" value="�ύ" onclick="formSubmit()">
			</div>
			<a href="FormServlet?username=<%=URLEncoder.encode("��Ҷ��","GBK")%>">�����ת</a>
		</form>
	</div>

</body>
</html>