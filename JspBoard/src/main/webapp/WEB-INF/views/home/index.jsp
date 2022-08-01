<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>룰루랄라</title>
</head>
<body>
	
	<% if (session.getAttribute("login") != null 
		&& ((boolean)session.getAttribute("login"))) { %>
		<div>현재 로그인 중입니다. </div> <a href="/JspBoard/jspboard/logout"><button id="logOutButton">로그아웃</button></a>
	<% } else { %>
		<div style="border: solid 1px black; width: 290px"> 
			<form action="/JspBoard/jspboard/login" method="POST" id="loginForm" /></form>
			<table>
				<tr>
					<th>로그인</th>
				</tr>
				<tr>
					<th>아이디</th>
					<td><input type="text" name="user_id" form="loginForm"/></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="user_password" form="loginForm"/></td>
				</tr>
				<tr>
					<td><input type="submit" value="로그인" form="loginForm"/></td>
					<td><button id="signUpButton">회원가입</button></td>
				</tr>
			</table>
		</div>
	<% } %>
	
	
	<!--  
	<div style="border: solid 1px black;"> 
		<form action="/JspBoard/jspboard/login" method="POST" id="loginForm" /></form>
		<table>
			<tr>
				<th>로그인</th>
			</tr>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="user_id" form="loginForm"/></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="user_password" form="loginForm"/></td>
			</tr>
			<tr>
				<td><input type="submit" value="로그인" form="loginForm"/></td>
				<td><button id="signUpButton">회원가입</button></td>
			</tr>
		</table>
	</div>
	-->
	
	<hr>
	
	<div>
		<form action="/JspBoard/jspboard/writepage"> <input type="submit" value="글 쓰기"/></form>
	</div>

	<div>
		<table border="1">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
			</tr>
			<c:forEach items="${posts }" var="post">
				<tr>
					<td>${post.post_num } </td>
					<td><a href="./read?num=${post.post_num }">${post.post_title }</a></td>
					<td>${post.post_writer }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	

	<script>	
		signUpButton.addEventListener('click', (e) => {
			location.href = '<%=request.getContextPath() %>/jspboard/signuppage';
		});	
	</script>

	
</body>
</html>