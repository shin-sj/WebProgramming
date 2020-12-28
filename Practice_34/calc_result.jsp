<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr33.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="calc" class="jspbook.pr34.Calculator" scope="page"/>
<jsp:setProperty property="*" name="calc"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
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
	out.println("<input type = text readonly name = num1 size= '15' value =" + calc.getOp1() + "> <br><br>");

	out.println(calc.getOperator());

	out.println("<br><br> <input type = text readonly name = num2 size= '15' value =" +  calc.getOp2() + "> <br><br>");
	
	out.println("=<br><br>");
	
	out.println("<input type = 'text' disabled size= '15' value = " + calc.calc() + ">");
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