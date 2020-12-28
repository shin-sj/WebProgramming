<%@ tag language="java" pageEncoding="UTF-8"%>
<jsp:useBean id="login" class="jspbook.pr33.LoginBean" />
<jsp:setProperty property="*" name="login"/>

<%@ attribute name="brd" %>
<%@ attribute name="color" %>

<h2><jsp:doBody/></h2>
<table border="${brd}" bgcolor="${color}">
<tr>
<th>이름:</th>
<td><%= session.getAttribute("id") %></td>
</tr>

<tr>
<th>패스워드:</th>
<td><%= session.getAttribute("pw") %></td>
</tr>

<tr>
<th>이메일:</th>
<td><%= session.getAttribute("email") %></td>
</tr>

<tr>
<th>성별:</th>
<td><%= session.getAttribute("gender") %></td>
</tr>

<tr>
<th>생일:</th>
<td><%= session.getAttribute("birth") %></td>
</tr>

<tr>
<td colspan="2">
<%=session.getAttribute("id") %>씨는 <%=login.gender() %>이고, 
	<%
	if(login.isGrownUp())
		out.println("성인입니다.");
	else
		out.println("성인이 아닙니다.");
	%>
</td>
</tr>

</table>