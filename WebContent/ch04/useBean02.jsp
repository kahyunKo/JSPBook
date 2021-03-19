<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="bean" class="ch04.com.dao.Calculator" />
	<%
	int m = bean.process(5);
	out.println("5의 세제곱 : " + m);
	%>
</body>
</html>