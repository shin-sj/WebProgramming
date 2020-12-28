<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>calendar</title>
<style>
	.style4 table, th {
		border: 1px solid gray;
		width : 250px;
		height: 30px;
		font-size: 13px;
		text-align: center;
	}
	table#style5 {
		border-collapse: collapse;
	}
</style>
</head>
<body>
<table class="style4" id="style5">
<tr>
<th class="style4"><font color = "red">일</font></th>
<th>월</th>
<th>화</th>
<th>수</th>
<th>목</th>
<th>금</th>
<th><font color = "blue">토</font></th>
</tr>

<%
for(int j = 0; j < 4; j++) {
	out.println("<tr>");
	for(int i=0; i < 7; i++)
		out.println("<th>&nbsp;</th>");
	out.println("</tr>");
}
%>
</table>
</body>
</html>