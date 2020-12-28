<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>컴퓨터학과 2학년 시간표</title>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
    text-align: center;
    width : 500px;
    height: 50px;
    font-size: 13px;
}

th {
    text-align: center;
    font-size: 20px;
    font-weight : bold;
}
</style>
</head>
<body>
<%!
	int[][] lectureType = {
			{0, 1, 1, 0, 1},
			{1, 0, 0, 0, 2},
			{0, 0, 2, 0, 4},
			{2, 3, 0, 3, 0},
			{0, 0, 0, 2, 0},
			{0, 0, 0, 0, 0}
	};

	int[][] consecutive = {
			{1, 2, 1, 1, 1},
			{2, 0, 1, 1, 1},
			{0, 1, 1, 1, 4},
			{2, 1, 1, 1, 0},
			{0, 1, 1, 2, 0},
			{1, 1, 1, 0, 0}
	};
	
	int[][] lectureTitle = {
			{-1, 4, 5, -1, 5},
			{3, -1, -1, -1, 1},
			{-1, -1, 1, -1, 7},
			{0, 6, -1, 6, -1},
			{-1, -1, -1, 2, -1},
			{-1, -1, -1, -1, -1}
	};
	
	String[] titleNames = {
		"웹프로그래밍", "운영체제", "소프트웨어프로그래밍", 
		"데이터베이스개론", "자료구조", "네트워크", "창의와감성", "사회봉사"
	};
	
	String nClass, sClass, rClass;
	
	String checkClass(int i, int j) {
		if (lectureTitle[i][j] == -1)
			nClass = "&nbsp;";
		else
			nClass = titleNames[lectureTitle[i][j]];
		
		return nClass;
	}
	
	String color(int i, int j) {
		if(lectureType[i][j]==0)
			sClass = "bgcolor = 'white'";
		else if(lectureType[i][j] == 1)
			sClass = "bgcolor = '#FFE08C'";
		else if(lectureType[i][j] == 2)
			sClass = "bgcolor = '#B2CCFF'";
		else if(lectureType[i][j] == 3)
			sClass = "bgcolor = '#BDBDBD'";
		else if(lectureType[i][j] == 4)
			sClass = "";
		
		return sClass;
		
	}
	
	String conClass(int i, int j) {
		if(consecutive[i][j] == 2)
			rClass = "rowspan = '2' ";
		else if(consecutive[i][j] == 3)
			rClass = "rowspan = '3' ";
		else if(consecutive[i][j] == 4)
			rClass = "rowspan = '4' ";
		else
			rClass = "";
		
		return rClass;
	}
%>

<%
	out.println("<div align=center>");
	out.println("<table>");
	out.println("<caption><h2>강의 시간표</h2></caption>");
	
	out.println("<tr>");
	out.println("<th>2학년</th>");
	out.println("<th>월</th>");
	out.println("<th>화</th>");
	out.println("<th>수</th>");
	out.println("<th>목</th>");
	out.println("<th>금</th>");
	out.println("</tr>");
	
	for(int i=0; i<=5; i++) {
		out.println("<tr>");
		out.println("<th>" + (i+1) + "</th>");
		for(int j=0; j<=4; j++) {

			if(consecutive[i][j] == 0) //앞타임의 연강일때
				continue;
			
			else
				out.println("<td " + conClass(i, j) + color(i, j) + ">" + checkClass(i, j) + "</td>");
		}
			
		out.println("</tr>");
	}
	
	out.println("</table>");
	out.println("</div>");

%>
</body>
</html>