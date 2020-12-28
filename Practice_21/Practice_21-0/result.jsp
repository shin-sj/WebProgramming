<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result</title>
</head>
<body>

<h2>전달된 파라미터 이름들</h2><br>
<%

	request.setCharacterEncoding("UTF-8");
 	Enumeration<String> params = request.getParameterNames();

	while(params.hasMoreElements()){
		String names = (String)params.nextElement();
	 	out.println(names + "<br>");
 }

%>

<hr>
	타입: <%= request.getParameter("type") %> <br>
	아이디: <%= request.getParameter("strID") %> <br>
	패스워드: <%= request.getParameter("strPwd") %> <br>
</body>
</html>