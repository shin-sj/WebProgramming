<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>news</title>
<style>
	div#left {
		text-align: left;
	}
</style>
</head>
<body>
<div id="left">
<h2>오늘의 일정</h2>
<hr>
<ol>
<li>
<%
	String task1 =  request.getParameter("TASK1");
	
	if(task1 == null) {
		task1="일정 없음";
		out.println(task1);
	}
	else
		out.println(task1);
%>
</li>
<li>
<%
	String task2 =  request.getParameter("TASK2");
	
	if(task2 == null) {
		task2="일정 없음";
		out.println(task2);
	}
	else
		out.println(task2);
%>
</li>
</ol>
</div>
</body>
</html>