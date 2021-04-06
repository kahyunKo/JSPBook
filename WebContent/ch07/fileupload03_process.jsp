<%@ page contentType="text/html; charset=utf-8" %>

<!-- Commons-FileUpload 패키지 사용 -->
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>

<html>

<head>
<title>File Upload</title>
</head>

<body>
	<%
		// 폼 페이지에서 전송된 파일을 저장할 서버의 경로 지정
		String fileUploadPath = "C:\\upload";
	
		// 파일 업로드를 위한 DiskFileUpload 클래스 생성
		DiskFileUpload upload = new DiskFileUpload();
		
		// 폼 페이지에서 전송된 요청 파라미터를 전달받도록 DiskFileUpload 객체 타입의 parse Request() 메소드 작성
		List items = upload.parseRequest(request);
		
		// 폼 페이지에서 전송된 요청 파라미터를 Iterator 클래스로 변환
		Iterator params = items.iterator();
		
		// 폼 페이지에서 전송된 요청 파라미터가 없을 때까지 반복하도록 Iterator 객체 타입의 hasNext() 메소드 작성
		while ( params.hasNext() ) {
			FileItem fileItem = (FileItem) params.next();
			// 폼 페이지에서 전송된 요청 파라미터가 파일이면 서버의 파일 저장 경로에 업로드 파일을 저장하도록 작성
			if ( !fileItem.isFormField() ) {
				String fileName = fileItem.getName();
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
				File file = new File(fileUploadPath + "/" + fileName);
				fileItem.write(file);
			}
		}
	%>
</body>
</html>
