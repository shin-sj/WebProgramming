<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
<style>

table, th, td {
	border-right:none;
	border-left:none;
	border-top:none;
	border-bottom:none;
	width : 400px;
	height: 100px;
	font-size: 13px;
}

th {
	height: 50px;
	text-align: center;
	font-size: 40px;
	font-family : serif;
	font-style : oblique;
	font-weight : bold;
	background : #32CCFE;
}

td {
	border: 1px solid #ECECEC;
    border-collapse: collapse;
 	text-align: center;
}

input {
	text-align: center;
 }
 
</style>
</head>
<body>
<form name =calculator method=post action=calc_result.jsp>
	<div align = "center">
	<table>
	<tr>
	<th colspan = "2">CalCuLaTor</th>
	</tr>
	
	<tr>
	<td>
	<img src="image/cal.jpg">
	</td>
	<td>
	<input type = text name = op1 size= "15">
	<br><br>
	<select name='operator'>
	  <option value='+' selected>+</option>
	  <option value='-'>-</option>
	  <option value='*'>*</option>
	  <option value='/'>/</option>
	</select>
	<br><br>
	<input type = text name = op2 size= "15">
	<br><br>
	<input type = "submit" value = "=" >
	<br><br>
	<input type = "text" size= "15" disabled>
	
	</td>
	</tr>
	
	<tr>
	<th colspan = "2">
	</th>
	</tr>
	
	</table>
	</div>
</form>
</body>
</html>