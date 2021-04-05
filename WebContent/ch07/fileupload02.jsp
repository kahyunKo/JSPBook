<%@ page contentType="text/html; charset=utf-8" %>

<HTML>
<HEAD>
<TITLE>File Upload</TITLE>
</HEAD>
<BODY>
	<form name="fileForm" method="post" enctype="multipart/form-data" action="fileupload02_process.jsp">
		
		<p> 이 름 1 : <input type="text" name="name1">
		    제 목 1 : <input type="text" name="subject1">
		    파 일 1 : <input type="file" name="filename1">
		
		<p> 이 름 2 : <input type="text" name="name2">
		    제 목 2 : <input type="text" name="subject2">
		    파 일 2 : <input type="file" name="filename2">
		
		<p> 이 름 3 : <input type="text" name="name3">
		    제 목 3 : <input type="text" name="subject3">
		    파 일 3 : <input type="file" name="filename3">
		    
		<p> <input type="submit" value="파일 업로드">
	</form>
</BODY>
</HTML>