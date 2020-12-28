<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" import="jspbook.pr35.LectureBean" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="lec" class="jspbook.pr35.LectureBean" />
<jsp:setProperty property="*" name="lec"/>
<jsp:useBean id="am" class="jspbook.pr35.LectureManager" scope="application" />
<%
	if (lec.getType() != -1)
		am.add(lec);
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>시간표 작성</title>
<style>
.print {
	text-align:center;
}
</style>
</head>
<body>
<%

	out.println("<form method=post action=Lecture.jsp>");
	out.println("과목타입 : ");
	out.println("<select name = 'type'>");

	for(int i = 0; i < lec.getTypeLength(); i++)
		out.print("<option value=" + i + ">" + lec.getTypenames(i) + "</option>");
	out.print("</select>");

	out.print("과목명:");
	out.print("<select name = 'title'>");
	for(int i = 0; i < lec.getTitleLength(); i++)
		out.print("<option value=" + i + ">" + lec.getTitlenames(i) + "</option>");
	out.print("</select>");
	
	out.print("요일:");
	out.print("<select name = 'day'>");
	for(int i = 0; i < lec.getDayLength(); i++)
		out.print("<option value=" + i + ">" + lec.getDaynames(i) + "</option>");
	
	out.print("</select>");
	
	out.print("시간:");
	out.print("<select name = 'time'>");
	for(int i = 1; i <= 6; i++)
		out.print("<option value=" + i + ">" + i + "</option>");
	out.print("</select>");

	out.print("연강여부:");
	out.print("<select name = 'consecutive'>");
	for(int i = 1; i <= 5; i++)
		out.print("<option value=" + i + ">" + i + "</option>");
		
	out.print("</select>");
	out.print("\t\t"); //
	out.print("<input type = 'submit' value = '등록'>");
	
	out.print("</form>");
	out.print("<hr>");
%>
<div style = "text-align : center">
<% 
	for (LectureBean l : am.getLectureList())
		out.println(l.toString() + "<br>");
	
%>
</div>
</body>
</html>