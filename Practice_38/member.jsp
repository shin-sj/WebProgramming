<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 가입</title>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
    text-align: left;
    width : 500px;
    height: 20px;
    font-size: 13px;
}
th {
    text-align: center;
    font-size: 17px;
    font-weight : bold;
    width : 200px;
    background : #ECECEC;
}
input.imageAlign {vertical-align:middle;}
</style>
</head>
<body>
<div align = "center">
<form name="member" method = post action = practice38.jsp>
<img src="image/eclass_title.jpg">
	<table>
	
	<tr>
		<th colspan="2">회원가입</th>
	</tr>
	<tr>
	
		<th>아이디</th>
		<td>
			<input type = "text" size = "17" name = "id">
			<input type = image src = "image/check.gif" class = "imageAlign">
		</td>
	</tr>
	<tr>
		<th>패스워드</th>
		<td><input type = "password" name = "pw" size = "15"></td>
	</tr>
	<tr>
		<th>성별</th>
		<td>
			<input type = "radio" name = "gender" value = "0">남
			<input type = "radio" name = "gender" value = "1" checked>여
		</td>
	</tr>
	<tr>
		<th>국적</th>
		<td>
			<input type = "text" name = "korea" value = "대한민국" size = "25" readonly>
			<input type = "button" value = "국적변경 " disabled>
		</td>
	</tr>
	<tr>
		<th>휴대폰</th>
		<td>
			<select name = "phoneNum">
				<option value="0">010</option>
				<option value="1">011</option>
				<option value="2">017</option>
				<option value="3">070</option>
			</select>
			 - <input type = "text" size="6" maxlength = "4"> - <input type = "text" size="6" maxlength = "4">
		</td>
	</tr>
	<tr>
		<th>이메일</th>
		<td><input type = "text" name = "email" size = "50"></td>
	</tr>
	<tr>
		<th>생일</th>
		<td>
			<input type = "date" name = "birth" value = "연도-월-일">
		</td>
	</tr>
	<tr>
		<th>관심분야</th>
		<td>
			<input type = "checkbox" name = "hobby" value = "0">뉴스
			<input type = "checkbox" name = "hobby" value = "1" checked>맛집
			<input type = "checkbox" name = "hobby" value = "2">책
			<input type = "checkbox" name = "hobby" value = "3">영화
			<input type = "checkbox" name = "hobby" value = "4">여행
		</td>
	</tr>
	<tr>
		<th>가입인사</th>
		<td><textarea rows = 5 cols = 55>회원들에게 간단한 가입인사를 남겨주세요</textarea></td>
	</tr>
	<tr>
		<th>증명사진</th>
		<td><input type = "button" value = "파일선택">선택된 파일 없음</td>
	</tr>
	<tr>
		<th colspan="2" style="text-align:center;">
			<input type = "submit" value = "가입하기" >
			<input type = "reset" value = "다시작성">
		
		</th>
	</tr>
	</table>
</form>
</div>
</body>
</html>