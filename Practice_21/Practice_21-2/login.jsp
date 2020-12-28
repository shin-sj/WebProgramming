<!-- FORM 태그에서 method 속성을 지정하지 않고 전달 -->
<!-- GET방식이 디폴트 , 주소창으로 확인-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>이클래스 로그인</title>
<style>
table, th, td {
	border-right:none;
	border-left:none;
	border-top:none;
	border-bottom:none;
	text-align: left;
	width : 900px;
	height: 80px;
	font-size: 13px;
}

th {
    text-align: center;
    font-size: 20px;
    font-weight : bold;
}

td {
	height: 50px;
	text-align: left;
}
</style>
</head>
<body>
<div align = "center">
<form name="frm1" action = result.jsp>
	<img src="image/eclass_title.jpg">
	
	<h2>로그인</h2>
	<hr/>
	<table>
	<tr>
	<td rowspan = "5">
	<img src="image/eclass_logo.png" style = "float : right">
	</td>
	<td style = "height : 15px" colspan = "2">회원님의 아이디와 비밀번호를 정확히 입력하세요</td>
	</tr>
	<tr>
	<td style = "width : 200px"></td>
	<td>
	<select name = "type">
		<option value="학부생">학부생</option>
		<option value="대학원생">대학원생</option>
		<option value="교직원">교직원</option>
	</select>
	</td>
	</tr>
	<tr>
	<td style = "width : 200px">아이디
	</td>
	<td>
	<input type = "text" name = "strID" size = "17" maxlength = "8" style = "background-color: #FEFF99;"></td>
	</tr>
	<tr>
	<td style = "width : 200px">비밀번호</td>
	<td>
	<input type = "text" name = "strPwd" size = "17" maxlength = "8" style = "background-color: #FEFF99;"></td>
	</tr>
	<tr>
	<td colspan = "2"  style="text-align:left;">
	<input type = "submit" value = "로그인">
	<input type = "button" value = "가입하기">
	</td>
	</tr>
	
	</table>
</form>
</div>	
</body>
</html>