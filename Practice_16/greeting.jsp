<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>greeting</title>
</head>
<body>
<h4>greeting.jsp에서 출력한 메세지입니다.</h4>
<%= request.getParameter("name") %>
님 환영합니다.<br>
오늘은
<%= request.getParameter("date") %>
입니다.
</body>
</html>