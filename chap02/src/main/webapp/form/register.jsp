<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%	
	// ※ 데이터를 받을 때 항상 비어있는 값에 대한 처리가 되어있어야 한다
	
	// JSP의 request 내장 객체 : 매개변수로 받는 HttpServletRequest req를 의미함
	String name = request.getParameter("name");
	// 파라미터는 숫자도 문자열로 받는다.
	String strAge = request.getParameter("age");
	Integer age = null;
	if (strAge != null && !strAge.equals("")) { // null 또는 빈 값에 대한 대비가 필요하다.
		age = Integer.parseInt(strAge);
	}
	String[] hobbies = request.getParameterValues("hobby");	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP에서 파라미터 받아 활용하는 페이지</title>
</head>
<body>

	<% for (int i = 0; i < hobbies.length; ++i) { %>
	
	<div id="<%=hobbies[i] %>" class="hobby"><%=hobbies[i] %></div>

	<% } %>
	
</body>
</html>