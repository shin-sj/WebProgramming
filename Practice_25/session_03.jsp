<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	long last = session.getLastAccessedTime();
	long create =  session.getCreationTime() ;
	long time = (last - create) /1000;
 %> 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Object: 03</title>
</head>
<body>
세션이 생성된 후 <% out.print(time); %> 초가 지났습니다.
</body>
</html>