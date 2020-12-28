<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application Object 02</title>
</head>
<body>
	<%
		String sTime = (request.getParameter("duration"));
		int time = Integer.parseInt(sTime) * 60; //분 -> 초
		session.setMaxInactiveInterval(time);
	%>
	
	<%= request.getParameter("username") %>님 환영합니다.
	<br><br>
	세션 ID : <%= session.getId() %> <br>
	세션 지속시간 : <% out.print(time); %>초
	<br><br>
	
	<%
     Integer count = (Integer)application.getAttribute("count");
  
     if(count == null) {
		application.setAttribute("count", 1);
	}
	
     int cnt = count.intValue() + 1;
     application.setAttribute("count", cnt);
	
	%>
	
	오늘의 접속자수 : <%= cnt %>

</body>
</html>