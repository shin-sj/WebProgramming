<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 04</title>
</head>
<body>

<%
	if (request.getMethod().equals("POST")) //post방식일때는
		out.println("page_control_02.jsp에서 전달된 내용입니다.<br>");
	else
		out.println("page_control_03.jsp에서 전달된 내용입니다.<br>");

	out.println("page_control_04.jsp에서 출력합니다. <hr>");
	out.println("넘겨받은 파라미터들<br>");

	Enumeration<String> e = request.getParameterNames(); //과제랑 같으려면, passwd 와 username순서 바껴야함.
	while (e.hasMoreElements()) {
		String s = e.nextElement();
		out.println(s + " : " + request.getParameter(s) + "<br>");
	}
%>

<hr>
안녕하세요. <%=request.getParameter("username") %> 님. 반갑습니다.
<hr>

</body>
</html>