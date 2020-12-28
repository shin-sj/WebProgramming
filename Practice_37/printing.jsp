<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ddwutag" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Custom Tags</title>
</head>
<body>
<%
//사용자 입력 값을 가지고 와서 세션의 속성으로 저장해서
//커스텀 태그로 전달한다.
if (request.getParameter("username") != null) 
	session.setAttribute("username", request.getParameter("username"));

if (request.getParameter("passwd") != null)
	session.setAttribute("passwd", request.getParameter("passwd"));
%>

<ddwutag:greeting color="pink"/>
<ddwutag:greeting color="green"/>

</body>
</html>