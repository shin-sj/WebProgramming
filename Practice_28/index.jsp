<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이상한 나라</title>
<style>
.text {
	font-size: 20px;
	text-align: center;
}
table, th, td {
    text-align: left;
    width : 800px;
    height: 15px;
    font-size: 13px;
}
th {
    font-size: 13px;
    width : 300px;
}
</style>


</head>
<body>

<p class="text">Alice in Wonderland</p> <br>

<table>
	<tr>
	<th>
	<jsp:include page = "viewer.jsp"/>
	</th>
	<td>
	<jsp:include page = "login.jsp" />
	</td>
	</tr>
</table>
</body>
</html>