<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	//멤버변수 선언
	int num1, num2 = 0;
	int result = 0;
	String op = "+";
	
	//연산자별 처리를 위한 메서드 선언
	public int calculator() {
		if(op.equals("+")) {
			result = num1 + num2;
		}
		else if(op.equals("-")) {
			result = num1 - num2;
		}
		else if(op.equals("*")) {
			result = num1 * num2;
		}
		else if(op.equals("/")) {
			result = num1 / num2;
		}
		
		return result;
	}
	
%>
    
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
}
</style>
</head>
<body>

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
<%
	num1 = Integer.parseInt(request.getParameter("num1"));
	num2 = Integer.parseInt(request.getParameter("num2"));

	op = request.getParameter("oper");
	out.println("<input type = text readonly name = num1 size= '15' value =" + num1 + "> <br><br>");

	out.println(op);

	out.println("<br><br> <input type = text readonly name = num2 size= '15' value =" +  num2 + "> <br><br>");
	
	out.println("=<br><br>");
	
	out.println("<input type = 'text' disabled size= '15' value = " + calculator() + ">");
%>
</td>
</tr>

<tr>
<th colspan = "2">
</th>
</tr>



</table>
</div>
</body>
</html>