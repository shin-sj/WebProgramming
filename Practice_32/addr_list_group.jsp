<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr32.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="am" class="jspbook.pr32.AddrManager" scope="application" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주소록</title>
<style>
	table, td{
		margin : auto;
		border : 1px solid black;
	}

</style>
</head>
<body>
<div style="text-align:center">
<h2>주소록(그룹별 보기)</h2>
<hr>

<a href="addr_form.jsp">주소추가</a><p>

<table border=1 width=500>

	<tr>
	<td>이름</td>
	<td>전화번호</td>
	<td>이메일</td>
	<td>성별</td>
	<td>그룹</td>
	</tr>

<%
	for(AddrBean ab : am.getAddrList()) {
		String n = ab.getGroup() ;
		if(n.equals("가족")) {
			out.println("<tr>");
			out.println("<td>" + ab.getUsername() + "</td>");
			out.println("<td>" + ab.getTel() + "</td>");
			out.println("<td>" + ab.getEmail() + "</td>");
			out.println("<td>" + ab.getSex() + "</td>");
			out.println("<td>" + ab.getGroup() + "</td>");
			out.println("</tr>");
		}	
	}

	for(AddrBean ab : am.getAddrList()) {
		String n = ab.getGroup() ;	
		if(n.equals("친구")) {
			out.println("<tr>");
			out.println("<td>" + ab.getUsername() + "</td>");
			out.println("<td>" + ab.getTel() + "</td>");
			out.println("<td>" + ab.getEmail() + "</td>");
			out.println("<td>" + ab.getSex() + "</td>");
			out.println("<td>" + ab.getGroup() + "</td>");
			out.println("</tr>");
		}
	}
	
	for(AddrBean ab : am.getAddrList()) {
		String n = ab.getGroup() ;

		if(n.equals("직장")) {
			out.println("<tr>");
			out.println("<td>" + ab.getUsername() + "</td>");
			out.println("<td>" + ab.getTel() + "</td>");
			out.println("<td>" + ab.getEmail() + "</td>");
			out.println("<td>" + ab.getSex() + "</td>");
			out.println("<td>" + ab.getGroup() + "</td>");
			out.println("</tr>");
		}	
	}

%>
</table>
</div>
</body>
</html>