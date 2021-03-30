<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<h3>회원 가입</h3>
	<form action="form04_process.jsp" name="member" method="post">
		<p> 아이디 : <input type="text" name="id"> <input type="button" value="아이디 중복 검사">
		<p> 비밀번호 : <input type="password" name="passwd">
		<p> 이름 : <input type="text" name="name">
		
		<p> 연락처 : 
		<select name="phone1">
		<option value="010">010</option>
		<option value="010">011</option>
		<option value="010">016</option>
		<option value="010">017</option>
		<option value="010">019</option>
		</select>
		-<input type="text" maxlength="4" name="phone2">
		-<input type="text" maxlength="4" name="phone3">
		
		<p> 성별 : <input type="radio" name="sex" value="남성" checked>남성
		          <input type="radio" name="sex" value="여성" >여성
		<p> 취미 : 독서<input type="checkbox" name="hobby1" checked>
		운동<input type="checkbox" name="hobby2">
		영화<input type="checkbox" name="hobby3">
		
		<p> <textarea name="comment" rows="3" cols="30" placeholder="가입 인사를 입력해주세요">
		</textarea>
		
		<p> <input type="submit" value="가입하기">
		<p> <input type="reset" value="다시 쓰기">
	</form>
</body>
</html>