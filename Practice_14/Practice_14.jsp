<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 14</title>
</head>
<body>
<% 
	Calendar cal = Calendar.getInstance();
	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH);
	int date = cal.get(Calendar.DATE);
	int day = cal.get(Calendar.DAY_OF_WEEK);
	int start = cal.getMinimum(Calendar.DATE);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	String korDay = "";
	
	switch(day) {
	case 1:
		korDay = "일";
		break;
	case 2:
		korDay = "월";
		break;
	case 3:
		korDay = "화";
		break;
	case 4:
		korDay = "수";
		break;
	case 5:
		korDay = "목";
		break;
	case 6:
		korDay = "금";
		break;
	case 7:
		korDay = "토";
		break;
	}
	
	out.println("오늘은 " + year +"년 " + (month+1) +"월 " + date +"일 " + korDay + "요일입니다.<br><br>");
	out.println("이번 달은 " + start + "일부터 시작하여 " + end + "일에 끝납니다.<br><br>");
	cal.set(1998, Calendar.AUGUST, 8);
	int startDay = cal.get(Calendar.DAY_OF_WEEK);
	
	switch(startDay) {
	case 1:
		korDay = "일";
		break;
	case 2:
		korDay = "월";
		break;
	case 3:
		korDay = "화";
		break;
	case 4:
		korDay = "수";
		break;
	case 5:
		korDay = "목";
		break;
	case 6:
		korDay = "금";
		break;
	case 7:
		korDay = "토";
		break;
	}
	out.println("내 생일 " + "1998년 " + "8월 " + "8일은 " + korDay + "요일입니다.");
%>

</body>
</html>