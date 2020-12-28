<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr32.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="addr" class="jspbook.pr32.AddrBean" />
<jsp:setProperty property="*" name="addr"/>
<jsp:useBean id="am" class="jspbook.pr32.AddrManager" scope="application" />
<%
	am.add(addr);
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주소록</title>
</head>
<body>
<div style = "text-align : center">

	<h2>등록내용</h2>
	<hr>
	
	이름 : <%=addr.getUsername() %><p>
	전화번호 : <%=addr.getTel() %><p>
	이메일 : <%=addr.getEmail() %><p>
	성별 : <%=addr.getSex() %><p>
	그룹 : <%=addr.getGroup() %><p>
	
	<hr>

	<a href="addr_list.jsp">전체 목록 보기</a>
	<a href="addr_list_group.jsp">그룹별 목록 보기</a>
</div>
</body>
</html>