<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이상한 나라</title>
</head>
<body>
<% 
	String action = request.getParameter("action");

	if (action.equals("login")) //매개변수 action이 "login"
	{
		String userName = request.getParameter("user");
		String password = request.getParameter("pwd");

		if(userName != null && password.equals("hatter")) {
			//세션 내장객체에 속성 저장
			session.setAttribute("user", userName);
		}
			
		//index.jsp로 이동	
		response.sendRedirect("index.jsp");
	}
	
	else if (action.equals("logout")) //매개변수 action이 "logout"
	{
		session.invalidate();
		//index.jsp로 이동	
		response.sendRedirect("index.jsp");
	}
			
%>
</body>
</html>