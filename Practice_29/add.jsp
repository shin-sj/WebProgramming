<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록</title>
<style>
#id1 {
	text-align: center;
}

</style>
</head>
<body>
<form id="id1">
<h2>주소록</h2>
<hr>
<%
	ArrayList<String> addrbook = (ArrayList<String>) application.getAttribute("addrbook");

	if(addrbook == null) {
	//if(application.getAttribute("addrbook") == null) {
		addrbook = new ArrayList<String>();
	}
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	String str = name + ", " + tel;

	addrbook.add(str);

	application.setAttribute("addrbook", addrbook);
	
 	int totalElements = addrbook.size();
 	for (int index = 0; index < totalElements; index++)
  		out.println((index+1) + ". " + addrbook.get(index) + "<br>");
%>
</form>
</body>
</html>