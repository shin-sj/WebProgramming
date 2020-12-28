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
<h2>주소록(전체보기)</h2>
<hr>

<a href="addr_form.jsp">주소추가</a>
<a href="addr_search_form.jsp">주소검색</a>

<p>
<table border=1 width=500>

	<tr>
	<td>이름</td>
	<td>전화번호</td>
	<td>이메일</td>
	<td>성별</td>
	<td>그룹</td>
	</tr>
<%
	int rpp = 2; //row per page
	int i;
	int currentPage;
	int size = am.getAddrList().size();

	//전체 페이지 수 계산
	int allpage;
	if(size % rpp == 0)
		allpage = size / rpp;
	else
		allpage = size / rpp + 1;
	
	//현재 페이지 인덱스와 출력할 목록 인덱스 정하기
	String sindex = request.getParameter("sindex");
	if(sindex == null)
		currentPage = 1;
	else
		currentPage = Integer.parseInt(sindex);
	
	int	startIndex = (currentPage - 1) * rpp;
	int lastIndex = startIndex + rpp - 1;
	
	if(currentPage == allpage) //마지막 페이지
		lastIndex = size - 1;	
	
	
	if(size != 0) { //주소록이 비어있지 않다면
		for (i = startIndex; i <= lastIndex; i++) {
	%>
			<tr>
			<td><%=am.getAddrList().get(i).getUsername() %></td>
			<td><%=am.getAddrList().get(i).getTel() %></td>
			<td><%=am.getAddrList().get(i).getEmail() %></td>
			<td><%=am.getAddrList().get(i).getSex() %></td>
			<td><%=am.getAddrList().get(i).getGroup() %></td>
			</tr>
	<% 
		}
	}
	%>

</table>
<p>
<% 
	for(i = 0; i < allpage; i++){
		if((i+1) != currentPage){%>
			<a href="addr_list.jsp?sindex=<%=(i+1)%>"><%=(i+1)%></a>
		<%}
		else{
			out.print(i+1);
		}
			
		if(i != allpage-1)
			out.print("| ");
			
		}
%>
</div>
</body>
</html>