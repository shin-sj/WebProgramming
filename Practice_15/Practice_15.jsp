<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 15</title>
</head>
<body>
<%
	Calendar cal = Calendar.getInstance();
	int year = 1919;
	int month = 3;
	cal.set(year, month-1, 1);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	int startDay = cal.get(Calendar.DAY_OF_WEEK);
	int cnt = 0;
	
	out.println("<h2>" + year + "년 " + month + "월" + "</h2><hr>");
	
	for(int i = 1; i < startDay; i++)
	{
		out.println("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp");
		cnt++;
	}
	
	for(int j = 1; j <= end; j++)
	{
		out.println(j + "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp");
		cnt++;
		if(cnt == 7) {
			out.println("<br>");
			cnt = 0;
		}
	}
%>
</body>
</html>