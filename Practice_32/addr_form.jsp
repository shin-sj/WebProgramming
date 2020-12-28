<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록</title>
<style>
	table, td{
		margin : auto;
		border : 1px solid black;
	}

</style>
</head>
<body>
<div style = "text-align : center">
<h2>주소록 등록</h2>
<hr>
</div>
<form name = fm1 method = "post" action ="addr_add.jsp">
	<table class = "border">
		<tr>
			<td>이름</td>
			<td><input type = text  name = "username"> </td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type = text class = "border" name = "tel"> </td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type = text class = "border" name = "email"> </td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
				<select class = "border" name = "sex">
				<option value = "남">남</option>
				<option value = "여">여</option>
				</select>
			 </td>
		</tr>
		<tr>
			<td>그룹</td>
			<td>
				<select class = "border" name = "group">
				<option value = "가족">가족</option>
				<option value = "친구">친구</option>
				<option value = "직장">직장</option>
				</select>
			 </td>
		</tr>
		<tr>
			<td colspan = 2>
				<div style= "text-align : center;">
					<input type = submit value = "확인">
					<input type = reset value = "취소">
				</div>
			</td>
		</tr>
	</table>
</form>
</body>
</html>