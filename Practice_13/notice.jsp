<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice</title>

<style>
table, th, td {
	border-right:none;
	border-left:none;
	border-top:none;
	border-bottom:none;
	text-align: center;
	width : 700px;
	height: 350px;
	font-size: 15px;
	font-weight : bold;
	background : #FEEED4;
}

th {
	height: 40px;
	text-align: center;
	font-size: 20px;
	font-weight : bold;
	background : #FEDAB8;
}
</style>
</head>
<body>
<div align = "center">
<img src="image/eclass_title.jpg">
<table>
	<tr>
	<th>오류가 발생했습니다</th>
	</tr>
	<tr>
	<td>
	<img src="image/flower.gif">
	<br>오류 발생시간 : <%= new java.util.Date() %>
	<br>최대한 빨리 조치하겠습니다.
	</td>
	</tr>
</table>
</div>
</body>
</html>