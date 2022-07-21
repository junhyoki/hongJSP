<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 페이지</title>
</head>
<body>

	<form action="/chap02/attribute/login" method="POST">
		아이디 : <input type="text" name="user_id"/> <br>
		비밀번호 : <input type="password" name="user_password"/> <br>
		<input type="submit" value="로그인"/>
		<input type="reset" value="취소"/>
	</form> 
	
	
	<a href="./view/login_result_page.jsp">로그인 여부 확인 페이지</a>
	
	<% if (session.getAttribute("login") != null 
		&& ((boolean)session.getAttribute("login"))) { %>
		<div>현재 로그인 중입니다. <button id="btn-logout">로그아웃</button></div> 
	<% } else { %>
		<div>로그인이 필요합니다.</div>
	<% } %>
	
	<script src="/chap02/assets/js/login.js">
	</script>
</body>
</html>