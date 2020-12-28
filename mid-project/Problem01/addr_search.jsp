<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr32.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="addr" class="jspbook.pr32.AddrBean" />
<jsp:setProperty property="*" name="addr"/>
<jsp:useBean id="am" class="jspbook.pr32.AddrManager" scope="application" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주소록 찾기</title>
</head>
<body>
<div style="text-align:center">
<%
	int cnt = 0;
	int num = 0;
	int[] count = new int[20]; //초기값 0
   
	String name = request.getParameter("username");

	for(AddrBean a : am.getAddrList()) {
		if(a.getUsername().equals(name)) { //입력한 값과 주소록의 값이 같다면
			count[num++] = cnt;
		}
		cnt++;
	}
   
	if(cnt != 0) { //주소록이 비어있지 않다면
		String n = am.getAddrList().get(count[0]).getUsername();
		if (n.equals(name)) { //count != null이라고 안쓴이유는 int형 배열은 항상 초기값이 0이기 때문
			out.println("<b>" + name + "님의 주소록 정보 입니다. (" + num + "명) <p></b>");
			for(int i = 0; i < num; i++) {
				out.println("이름 : " + am.getAddrList().get(count[i]).getUsername() + "<p>"); 
				out.println("전화번호 : " + am.getAddrList().get(count[i]).getTel() + "<p>");
				out.println("이메일 : " + am.getAddrList().get(count[i]).getEmail() + "<p>");
				out.println("성별 : " + am.getAddrList().get(count[i]).getSex() + "<p>");
				out.println("그룹 : " + am.getAddrList().get(count[i]).getGroup() + "<p> <hr>");
			}
	}
	   
		else
			out.println(name + "님은 주소록에 없는 이름입니다. <p>");
	}
	
	else
		out.println("주소록이 비어있습니다. <p>");
%>

	<a href="addr_list.jsp">전체 목록 보기</a>
	<a href="addr_list_group.jsp">그룹별 목록 보기</a>
   
</div>
</body>
</html>