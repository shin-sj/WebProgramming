<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar</title>
<style>
	div#left {
		text-align: left;
	}
</style>
</head>
<div id="left">
<%
	Calendar cal = Calendar.getInstance();
	String y = request.getParameter("YEAR");
	String m = request.getParameter("MONTH");
	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH);
	int startDay = cal.get(Calendar.DAY_OF_WEEK);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	int cnt = 0;
	
	
	if(y != null && m != null) {
		year = Integer.parseInt(y);
		month = Integer.parseInt(m);
		cal.set(year, month-1, 1);
		end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		startDay = cal.get(Calendar.DAY_OF_WEEK);
	}
	else {
		startDay--;
		month++;
	}

	out.println("<h2>" + year + "년 " + month + "월" + "</h2><hr>");
	
	for(int i = 1; i < startDay; i++)
	{
		out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
		cnt++;
	}
	
	for(int j = 1; j <= end; j++)
	{
		out.println(j + "&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
		cnt++;
		if(cnt == 7) {
			out.println("<br>");
			cnt = 0;
		}
	}
	
%>
</div>
</body>
</html>