<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Enumeration" %>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%
	Enumeration en = request.getHeaderNames(); 
	while (en.hasMoreElements()) { // 요소가 있는 동안 true(반복)
		String headerName = (String) en.nextElement();
		String headerValue = request.getHeader(headerName);
	%>
	
	<%=headerName%>:<%=headerValue%><br>
	
	<%
	}
	%>
</body>
</html>