<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 18</title>
<style>
	.class table, td {
		border-right:none;
		border-left:none;
		border-top:none;
		border-bottom:none;
		height: 100px;
		width: 450px;
		text-align: center;
	}
	td#style2 {
		width: 30px;
	}
	td#style3 {
		width: 150px;
	}
</style>
</head>
<body>
<div align = "center">
<h2>Include Action Practice</h2>
<hr>
<table class="style1">
<tr>
<td class="style1">
<jsp:include page="calendar.jsp">
	<jsp:param name="YEAR" value="2017" />
	<jsp:param name="MONTH" value="10" />
</jsp:include>
</td>
<td class="style1" id="style2">&nbsp;</td>
<td class="style1" id="style3">
<jsp:include page="news.jsp">

	<jsp:param name="TASK2" value= "Homework" />
</jsp:include>
</td>
</tr>
</table>
</div>
</body>
</html>