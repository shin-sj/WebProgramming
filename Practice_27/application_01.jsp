<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application Object 01</title>
<style>
table, th, td {
    text-align: left;
    width : 500px;
    height: 15px;
    font-size: 13px;
}
th {

    font-size: 13px;
    width : 400px;
}
</style>

</head>
<body>
<form name = form1 method=post action=application_02.jsp>
	<table>
	<tr>
		<th>아이디:</th>
		<td> <input type = "text" size = "17" name = username > </td>
		
		
	</tr>
	
	<tr>
		<th>원하는 세션 지속시간 (분)</th>
		<td> <input type = "text" size = "17" name = duration> </td>
	</tr>
	</table>	
	
	<input type = "submit" value = "로그인">
	<input type = "submit" value = "취소">
	
</form>
</body>
</html>