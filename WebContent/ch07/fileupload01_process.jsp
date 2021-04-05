<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.oreilly.servlet.*"%> <!-- MultipartRequest 클래스 사용 -->
<%@ page import="com.oreilly.servlet.multipart.*"%> <!-- DefaultFileRenamePolicy 클래스 사용 -->
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>

<%
	/* MultipartRequest 클래스 생성, 파일 저장 경로, 파일의 초대 크기, 인코딩 유형, 파일명 중복 DefaultFileRenamePolicy 클래스 작성 */
	MultipartRequest multi = new MultipartRequest(request, "C:\\upload", 5*1024*1024,"utf-8", new DefaultFileRenamePolicy());

	Enumeration params = multi.getParameterNames(); // 폼 페이지에서 전송된 요청 파라미터를 받도록 getParameterNames() 메소드 작성
	
	while (params.hasMoreElements()) { // 폼 페이지에서 전송된 요청 파라미터가 없을 때까지 반복
		String name = (String) params.nextElement(); // 폼 페이지에서 전송된 요청 파라미터의 이름을 가져 옴 
		String value = multi.getParameter(name); // 얻어 온 요청 파라미터의 이름으로 MultiPartRequest 객체 타입의 getParameter() 메소드 작성 
		out.println(name + " = " + value + "<br>");
	}
	
	out.println("--------------------------<br>");
	
	Enumeration files = multi.getFileNames(); // 폼 페이지에서 전송된 요청 파라미터 중 파일을 전달받도록 getFileNames() 메소드 작성
	
	while (files.hasMoreElements()) {
		// 폼 페이지에서 전송된 요청 파라미터 중 파일을 가져오도록 nextElement() 메소드 작성
		String name = (String) files.nextElement();  
		
		// 폼 페이지에서 전송되어 서버에 업로드 된 파일을 가져오도록 MultipartReques 객체 타입의 getFilesystemName() 메소드 작성
		String filename = multi.getFilesystemName(name); 
		
		// 폼 페이지에서 전송된 파일이 서버에 저장되기 전의 파일 이름을 가져오도록 getOriginalFileName() 메소드 작성
		String original = multi.getOriginalFileName(name);
		
		// 폼 페이지에서 전송된 파일의 콘텐츠 유형을 가져오도록 getContentType() 메소드 작성
		String type = multi.getContentType(name);
		
		// 폼 페이지에서 전송된 파일을 가져오도록 getFile() 메소드 작성
		File file = multi.getFile(name);
		
		// 저장된 각각의 값 출력
		out.println("요청 파라미터 이름 : " + name + "<br>");
		out.println("실제 파일 이름 : " + original + "<br>");
		out.println("저장 파일 이름 : " + filename + "<br>");
		out.println("파일 콘텐츠 유형 : " + type + "<br>");
		
		if ( file != null ) {
			out.println(" 파일 크기 : " + file.length());
			out.println("<br>");
		}
	}
%>
	