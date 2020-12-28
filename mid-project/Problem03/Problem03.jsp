<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import = "java.util.ArrayList" import = "jspbook.pr03.*"%>

 <jsp:useBean id="addr" class="jspbook.pr03.LectureBean"/>
<jsp:setProperty name="addr" property="*"/>
<jsp:useBean id="am" class="jspbook.pr03.LectureManager" scope="session"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>시간표 작성</title>
<style>
table{
border: solid 1px black;
border-collapse : collapse;
}
th,td{
   border: solid 1px black;
   width: 80px; 
   height: 50px;
   text-align: center;   
}
th{
   font-size: 20px;
   }
td{
   font-size: 13px;
   }
.mandatory{
background-color: #FFE08C;
}
.selective{
background-color: #B2CCFF;
}
.sub{
background-color: #BDBDBD;
}
.left_column{
font-weight: bold;
}
</style>
</head>
<form name="frm1" method="post" action="Problem03.jsp">
<div align = "center">
<%
   request.setCharacterEncoding("UTF-8");
   
	String t[] = addr.getTypenames();
	String ti[] = addr.getTitlenames();
	String d[] = addr.getDaynames();

   out.println("과목타입: <select name=\"type\">");
   for(int i = 0; i <t.length; i++) {
      out.println("<option value="+ i +">" + t[i] + "</option>");
   }
   out.println("</select>");
   
   out.println("과목명: <select name=\"title\">");
   for(int i = 0; i <ti.length; i++) {
      out.println("<option value="+ i +">" + ti[i]+ "</option>");
   }
   out.println("</select>");
   
   out.println("요일: <select name=\"day\">");
   for(int i = 0; i <d.length; i++) {
      out.println("<option value="+ i +">" + d[i]+ "</option>");
   }
   out.println("</select>");
  
   out.println("시간: <select name=\"time\">");
   for(int i = 1; i < 7; i++) {
      out.println("<option value="+ i +">" + i + "</option>");
   }
   out.println("</select>");
   
   out.println("연강여부: <select name=\"consecutive\">");
   for(int i = 1; i < 5; i++) {
      out.println("<option value="+ i +">" + i + "</option>");
   }
   out.println("</select>&nbsp;&nbsp;");
%>
<input type="submit" value="등록">
<hr>
</div>
</form>
<%
	if (addr.getType() != -1) {
		am.add(addr);  
	}
 am.buildMatrix();
%>
<div align = "center">
<h3>강의 시간표</h3>
<table>
<%
out.println("<tr>");
out.println("<th>2학년</th>");
out.println("<th>월</th>");
out.println("<th>화</th>");
out.println("<th>수</th>");
out.println("<th>목</th>");
out.println("<th>금</th>");
out.println("</tr>");

for (int i = 0; i < 6; i++) {
   out.println("<tr>");
   out.println("<td class=left_column>" + (i + 1) + "</td>");
   for (int j = 0; j < 5; j++) {
      int[][] consecutive = am.getSpanMatrix();
      int[][] lectureTitle = am.getTitleMatrix();
      int[][] lectureType = am.getTypeMatrix();
      
      if (consecutive[i][j] > 0) {
         if (lectureType[i][j] == 0) {
         out.println("<td> &nbsp; </td>");
         }
         else if (lectureType[i][j] == 1) {
            out.print("<td class=mandatory");
         }
         else if (lectureType[i][j] == 2) {
            out.print("<td class=selective");
         }
         else if (lectureType[i][j] == 3) {
            out.print("<td class=sub");
         }
         else if (lectureType[i][j] == 4) {
            out.print("<td");
         }
      }
      if (lectureTitle[i][j] != -1){
         out.print(" rowspan=" + consecutive[i][j] +">" + ti[lectureTitle[i][j] - 1]+"</td>");
      }
   }
   out.println("</tr>");
}

%>
</table>
<br>
<hr>
<br>
<%
for (LectureBean sum : am.getLectureList()) {
    out.println(sum.toString() + "<br>");
 } %>
</div>
</body>
</html>