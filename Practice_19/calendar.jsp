<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar" %>

<%!
	public String parseDay(int cnt, String day) {
	
		String str = "null";
		
		if(cnt % 7 == 0)
			str = "<tr id='tr'><td id='td'><font color='red'>" + day + "</font></td>";
		else if(cnt % 7 == 6)
			str = "<td id='td'><font color='blue'>" + day + "</font></td></tr>";
		else
			str = "<td id='td'>" + day + "</td>";
			
		return str;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar</title>
<style>

#rtable, #trright, #tdright {
	width : 600px;
	height: 30px;
	font-size: 18px;
	text-align: right;
	
	border-right:none;
	border-left:none;
	border-top:none;
	border-bottom:none;
}
#table, #th, #td {
	border-collapse: collapse;
	border: 1px solid;
	width : 600px;
	height: 30px;
	font-size: 13px;
	text-align: center;
}

</style>
</head>
<body>
<%
	Calendar today = Calendar.getInstance(); //오늘날짜 저장
	int year = today.get(Calendar.YEAR);
	int month = today.get(Calendar.MONTH);
	int date = today.get(Calendar.DATE);
	
	Calendar cal = Calendar.getInstance(); //달력생성을 위한 객체
	cal.set(year, month, 1);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	int startDay = cal.get(Calendar.DAY_OF_WEEK); //시작날짜의요일
	int cnt = 0;

%>
	<table id="rtable">
<%
	out.println("<tr id='trright'>");
	out.println("<td id='tdright'colspan='7'>");
	out.println(year + "-" + (month+1) + "-" + date);
	out.println("</td>");
	out.println("</tr>");
%>
	</table>
	<table id="table">	
<% 

	out.println(parseDay(0, "일"));
	out.println(parseDay(1, "월"));
	out.println(parseDay(2, "화"));
	out.println(parseDay(3, "수"));
	out.println(parseDay(4, "목"));
	out.println(parseDay(5, "금"));
	out.println(parseDay(6, "토"));
	
	out.println("<tr id='tr'>");
	for(int k = 1; k < startDay; k++) {
		out.println("<td id='td'>&nbsp;</td>");
		cnt++;
	}
	for(int i = 1; i <= end; i++)
	{
		String strNum = Integer.toString(i);
		out.println(parseDay(cnt, strNum));
		cnt++;
		
		for(int j = 1; j < 5; j++) {
			if(cnt == 7*j) {
				out.println("</tr>");
				if(j < 5) {
					out.println("<tr id='tr'>");
					cnt = 0;
					break;
				}
			}	
		}		
	}

%>
</table>	
</body>
</html>