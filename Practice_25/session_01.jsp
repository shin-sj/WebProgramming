<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Object: 01</title>
</head>
<body>

	<form method=post action=session_02.jsp>
	아이디: <input type = text name = username>
	비밀번호: <input type = text name = passwd>
	<input type=submit value="로그인" onclick = "document.location='session_02.jsp'">
	<input type=submit value="취소">
	</form>

</body>
</html>