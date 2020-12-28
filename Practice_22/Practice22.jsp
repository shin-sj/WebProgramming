<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration" import="java.util.*"%>
<% request.setCharacterEncoding("UTF-8"); %>

<%!
	String[] mChoice = {"hobby"};
	String[] hobbyNames = {"뉴스", "맛집", "책", "영화", "여행"};
	String[] telCompany = {"010", "011", "017", "070"};
	String[] gNames = {"남", "여"};

	ArrayList<String> getParameterNames(HttpServletRequest request)
	{
	   ArrayList<String> list = new ArrayList<String>();
	   
	   Enumeration<String> e = request.getParameterNames();
	   while(e.hasMoreElements())
	   {
	     list.add(e.nextElement());
	   }
	   return list;
	}
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 22</title>
</head>
<body>
<%

	ArrayList<String>list = getParameterNames(request);
	
	for(String i : list) {
		if(i.equals("hobby")) {
			String hobbys[] = request.getParameterValues(i);
			out.println(i + " : ");
			for (String hobby: hobbys)
				out.println(hobby + "/");
			out.println("<br>");
		}
		else
			out.println(i + " : " + request.getParameter(i) + "<br>");
	}

	out.println("<hr><h1>Processing Parameters</h1>");
   
	for(String i : list) {
		if(i.equals("gender")) {
			int n = Integer.parseInt(request.getParameter(i));
			out.println(i + " : " + gNames[n] + "<br>");
		}
		else if(i.equals("phone1")) {
			int n = Integer.parseInt(request.getParameter(i));
			out.println(i + " : " + telCompany[n] + "<br>");
		}
		else if(i.equals("hobby")) {
			String hobbys[] = request.getParameterValues(i);
			out.println(i + " : ");
			for(String hobby: hobbys) {
				int numH = Integer.parseInt(hobby);
				out.println(hobbyNames[numH] + "/");
			}
			out.println("<br>");
		}
		else
			out.println(i + " : " + request.getParameter(i) + "<br>");
	}
%>
</body>
</html>