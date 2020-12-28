<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Practice 09</title>
</head>
<body>
<%
String s = "Hello, Welcome to JSP World! Let's go!";
String t = "JSP";

out.println("입력되어 있는 문자열: " + s + "<BR>");
out.println("문자열의 길이: " + s.length() + "<BR>");
out.println("'" + t + "'" + "라는 문자의 위치: " + s.indexOf(t) + "<BR>");
out.println("모두 소문자로 변경:" + s.toLowerCase() + "<BR>");
out.println("모두 대문자로 변경:" + s.toUpperCase());
%>
</body>
</html>