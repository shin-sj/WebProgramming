<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration" import="java.util.*"%>
<% request.setCharacterEncoding("UTF-8"); %>

<%!
	String[] mChoice = {"hobby"};
	String[] hobbyNames = {"뉴스", "맛집", "책", "영화", "여행"};
	String[] telCompany = {"010", "011", "017", "070"};
	String[] gNames = {"남", "여"};

	ArrayList<String> getParameterNames(HttpServletRequest request)
	{
		ArrayList<String> list = new ArrayList<String>();
	   
		Enumeration<String> e = request.getParameterNames();
		while(e.hasMoreElements())
		{
			list.add(e.nextElement());
		}
		return list;
	}	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 40</title>
</head>
<body>

<hr>
	id : ${param.id} <br>
	pw : ${param.pw} <br>
	gender : ${param.gender} <br>
	phone1 : ${param.phone1} <br>
	phone2 : ${param.phone2} <br>
	phone3 : ${param.phone3} <br>
	email : ${param.email} <br>
	birth : ${param.birth} <br>
	memo : ${param.memo} <br>
	
<hr>
<h1>Processing Parameters</h1><br>
<% ArrayList<String>list = getParameterNames(request); %>
	id : ${param.id} <br>
	pw : ${param.pw} <br>
	gender :
	<%
	int n;
	if (request.getParameter("gender") == "0")
		n = 0;
	else
		n = 1;
		
	out.println(gNames[n]);
	%><br>
	phone1 :
	<%
		if (request.getParameter("phone1") == "010")
			n = 0;
		else if (request.getParameter("phone1") == "011")
			n = 1;
		else if (request.getParameter("phone1") == "017")
			n = 2;
		else if (request.getParameter("phone1") == "070")
			n = 3;
	
	out.println(telCompany[n]);
	%><br>
	phone2 : ${param.phone2} <br>
	phone3 : ${param.phone3} <br>
	email : ${param.email} <br>
	birth : ${param.birth} <br>
	memo : ${param.memo} <br>

</body>
</html>