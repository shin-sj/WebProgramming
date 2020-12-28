<%@ tag language="java" pageEncoding="UTF-8"%>

<h2><jsp:doBody/></h2>

<hr>
<%
out.println("<table>");
for(int j = 0; j < 2; j++) {
	out.println("<tr>");
	for(int i = 0; i < 4; i++) {
		out.println("<td>");
		for(int k = 0; k < 9; k++) {
			if(j == 0)
				out.println((i+2) + " * " + (k+1) + " = " + (i+2) * (k+1) + "<BR>");
			else
				out.println((i+6) + " * " + (k+1) + " = " + (i+6) * (k+1) + "<BR>");
		}
		out.println("</td>");
	}
	out.println("</tr>");
}
out.println("</table>");
%>