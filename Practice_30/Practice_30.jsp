<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시간표 작성</title>
<style>
.print {
	text-align:center;
}
</style>
</head>
<body>
<%
	String[] typeNames = {"전공필수", "전공선택", "교양", "자유선택"};
	String[] titleNames = {"웹프로그래밍", "운영체제", "소프트웨어프로그래밍", "데이터베이스개론", "자료구조", "네트워크", "창의와감성", "사회봉사"};
	String[] days = {"월", "화", "수", "목", "금"};

	out.print("<form method=post action=Practice_30.jsp>");
	out.print("과목타입:");
	out.print("<select name = 'lectureType'>");
		for(int i=0; i < 4; i++)
			out.print("<option value=" + typeNames[i] + ">" + typeNames[i] + "</option>");
		
	out.print("</select>");
	
	out.print("과목명:");
	out.print("<select name = 'lectureTitle'>");
	for(int i=0; i < 8; i++)
		out.print("<option value=" + titleNames[i] + ">" + titleNames[i] + "</option>");
		
	out.print("</select>");
	
	out.print("요일:");
	out.print("<select name = 'day'>");
	for(int i=0; i < 5; i++)
		out.print("<option value=" + days[i] + ">" + days[i] + "</option>");
	
	out.print("</select>");
	
	out.print("시간:");
	out.print("<select name = 'time'>");
	for(int i=1; i <= 6; i++)
		out.print("<option value=" + i + ">" + i + "</option>");

	out.print("</select>");

	out.print("연강여부:");
	out.print("<select name = 'consecutive'>");
	for(int i=1; i <= 4; i++)
		out.print("<option value=" + i + ">" + i + "</option>");

	out.print("</select>");
	out.print("\t\t"); //
	out.print("<input type = 'submit' value = '등록'>");
	
	out.print("</form>");
	out.print("<hr>");

	out.print("<form name=form2 class='print'>");
	ArrayList<String> timetable = (ArrayList<String>) application.getAttribute("timetable");
	if(timetable == null) {
		timetable = new ArrayList<String>();
	}
	String lectureType = request.getParameter("lectureType");
	String lectureTitle = request.getParameter("lectureTitle");
	String day = request.getParameter("day");
	String time = request.getParameter("time");
	String consecutive = request.getParameter("consecutive");
	
	String str = lectureType + "/" + lectureTitle + "/" +  day + "/" +  time + "/" + consecutive;

	if(lectureType != null && lectureTitle != null && day != null && time != null && consecutive != null)
		timetable.add(str);
	application.setAttribute("timetable", timetable);
	
 	int totalElements = timetable.size();
 	
 	for (int index = 0; index < totalElements; index++)
  		out.println(timetable.get(index) + "<br>");
 	
 	out.print("</form>");
%>

</body>
</html>