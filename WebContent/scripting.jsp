<html>
<head>
<title>Scripting Tag</title>
</head>
<body>
	<h2>Scripting Tag</h2>
	
	<!-- 선언문 태그를 사용하여 자바 변수와 메소드 정의 -->
	<%!
	int count = 3;

	String makeItLower(String data) {
		return data.toLowerCase();
	}%>

	<!-- 스크립틀릿 태그로 자바 로직 코드 작성 -->
	<%
	for (int i = 1; i <= count; i++) {
		out.println("Java Server Pages " + i + ".<br>");
	}
	%>
	
	<!-- 표현문 태그로 선언문의 메소드를 호출하여 문자열 형태로 출력 -->
	<%=makeItLower("Hello World")%>

</body>
</html>