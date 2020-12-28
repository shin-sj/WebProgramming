<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 12</title>
<style>
	.class table, td {
		border-right:none;
		border-left:none;
		border-top:none;
		border-bottom:none;
		height: 80px;
		width: 270px;
		text-align: center;
	}
	td#style2 {
		width: 30px;
	}
	td#style3 {
		width: 350px;
	}
</style>
</head>
<body>
<div align = "center">
<h2>include 지시어 연습</h2>
<hr>
<table class="style1">
<tr>
<td class="style1"><%@include file="calendar.jsp" %></td>
<td class="style1" id="style2">&nbsp;</td>
<td class="style1" id="style3"><%@include file="news.jsp" %></td>
</tr>
</table>
</div>
</body>
</html>