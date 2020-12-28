<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr33.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="login" class="jspbook.pr33.LoginBean" />
<jsp:setProperty property="*" name="login"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>register</title>
</head>
<body>
<div style = "text-align : center">
<h2>등록내용</h2>
	<hr>

	이름 : <jsp:getProperty property="id" name="login"/><p>
	패스워드 : <jsp:getProperty property="pw" name="login"/><p>
	이메일 : <% out.println(request.getParameter("email")); %><p>
	성별 : <%=login.getGender() %><p>
	생일 : <%=login.getBirth() %><p>
	
	<hr>
	<%=login.getId() %>씨는 <%=login.gender() %>이고, 
	<%
	if(login.isGrownUp())
		out.println("성인입니다.");
	else
		out.println("성인이 아닙니다.");
	%>
	
	<p>
</div>
</body>
</html>