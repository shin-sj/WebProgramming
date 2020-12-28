<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr33.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib tagdir="/WEB-INF/tags" prefix="ddwutag" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="login" class="jspbook.pr33.LoginBean" />
<jsp:setProperty property="*" name="login"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Practice 38</title>
</head>
<body>
<div align = "center">
<%

	session.setAttribute("id", login.getId());
	session.setAttribute("pw", login.getPw());
	session.setAttribute("gender", login.getGender());
	session.setAttribute("email", login.getEmail());
	session.setAttribute("birth", login.getBirth());

%>

<ddwutag:printTable brd="2" color="pink"> 회원정보 </ddwutag:printTable>

</div>
</body>
</html>