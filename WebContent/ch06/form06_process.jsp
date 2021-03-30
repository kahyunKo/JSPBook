<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.*,java.util.*"%>

<HTML>
<HEAD>
<TITLE>Form Processing</TITLE>
</HEAD>
<BODY>
	<TABLE border="1">
		<tr>
			<th>요청 파라미터 이름</th>
			<th>요청 파라미터 값</th>
		</tr>
		<%
			request.setCharacterEncoding("UTF-8");
		
			Enumeration paramNames = request.getParameterNames(); 
			//getParameterNames() : 모든 요청 파라미터의 이름과 값을 Enumeration 객체 타입으로 전달받음
			while ( paramNames.hasMoreElements()) { // 반환 유형 : true or false
				String name = (String) paramNames.nextElement();
				out.println("<tr><td>" + name + " </td>\n");
				
				String paramValue = request.getParameter(name);
				out.println("<td> " + paramValue + "</td></tr>\n");
			}
		%>
	</TABLE>
</BODY>
</HTML>