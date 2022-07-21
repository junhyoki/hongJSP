<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 결과 확인 페이지</title>
</head>
<body style="font-size: 35px;">

<% if (session.getAttribute("login") != null 
&& ((boolean)session.getAttribute("login"))) { %>
	<div style="color: blue;">
<% } else { %>
	<div style="color: red;">
<% } %>
	로그인중이면 파란 글씨로 보이는 페이지. </div>
	
	<a href="/chap02/attribute/login.jsp">메인 페이지</a>

</body>
</html>