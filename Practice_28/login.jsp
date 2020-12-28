<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이상한 나라</title>
</head>
<body>

<%
//로그인정보가 없는 경우
	if(session.getAttribute("user") == null) {
		out.println("<form name = form1 method=post action='checker.jsp'>");
		out.println("아이디: <input type = 'text' size = '17' name = 'user' > <br>");	
		out.println("패스워드: <input type = 'text' size = '17' name = pwd > <br>");	
		out.println("<input type = 'hidden' name = 'action' value='login'>");
		out.println("<input type = 'submit' value = '로그인'>");
		out.println("</form>");
	}

//로그인정보가 있는 경우
	else {
		
		out.println("<form name=form2 method=post action='checker.jsp'>");
		String userName = (String)session.getAttribute("user");
		out.println(userName + "님 반갑습니다. <br>");
		
		out.println("<input type = 'hidden' name = 'action' value='logout'> ");
		out.println("<input type = 'submit' value = '로그아웃'>");
		out.println("</form>");
	}
%>
</body>
</html>