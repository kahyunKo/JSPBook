<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.com.dao.Person"></jsp:useBean>
	<jsp:setProperty name="person" property="id" value="201800002" />
	<jsp:setProperty name="person" property="name" value="고가현" />
	<p>
		아이디 :
		<jsp:getProperty property="id" name="person" />
	<p>
		이 름 :
		<jsp:getProperty property="name" name="person" />
</body>
</html>