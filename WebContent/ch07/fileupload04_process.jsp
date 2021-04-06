<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<html>
<head>
<title>File Upload</title>
</head>
<body>
	<%
		String path = "C:\\upload";
	
		DiskFileUpload upload = new DiskFileUpload();
		
		// 업로드할 파일의 최대 크기, 메모리상에 저장할 최대 크기, 업로드된 파일을 임시로 저장할 경로 작성
		upload.setSizeMax(1000000);
		upload.setSizeThreshold(4096);
		upload.setRepositoryPath(path);
		
		List items = upload.parseRequest(request);
		Iterator params = items.iterator();
		
		while ( params.hasNext() ) {
			FileItem item = (FileItem) params.next();
			
			// 폼 페이지에서 전송된 요청 파라미터의 이름을 가져오도록 Iterator 객체 타입의 next() 메소드 작성
			if ( item.isFormField() ) {
				String name = item.getFieldName();
				String value = item.getString("utf-8");
				out.println(name + "=" + value + "<br>");
			} else {
				String fileFieldName = item.getFieldName();
				String fileName = item.getName();
				String contentType = item.getContentType();
				
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
				long fileSize = item.getSize();
				
				File file = new File(path + "/" + fileName);
				item.write(file);
				
				out.println("----------------------<br>");
				out.println("요청 파라미터 이름 : " + fileFieldName + "<br>");
				out.println("저장 파일 이름 : " + fileName + "<br>");
				out.println("파일 콘텐츠 유형 : " + contentType + "<br>");
				out.println("파일 크기 : " + fileSize);
			}
		}
	%>
</body>
</html>