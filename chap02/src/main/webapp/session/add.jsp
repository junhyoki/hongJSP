<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	String key = request.getParameter("key");
	String value = request.getParameter("value");
	
	if (key == null || value == null) {
		response.sendRedirect("./index.jsp");
		return;
	}
	
	session.setAttribute(key, value);
	
	response.sendRedirect("./index.jsp");
	//request.getRequestDispatcher("").forward(request, response);
%>