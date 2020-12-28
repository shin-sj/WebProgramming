<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward action</title>
</head>
<body>
<div align = "center">
<h2>forward 액션 연습</h2><hr>
<jsp:forward page="greeting.jsp">
	<jsp:param name="name" value="Dongduk University" />
	<jsp:param name="date" value="2011/04/05" />
</jsp:forward>
</div>
</body>
</html>