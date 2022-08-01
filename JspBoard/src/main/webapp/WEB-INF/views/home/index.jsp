<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������</title>
</head>
<body>
	
	<% if (session.getAttribute("login") != null 
		&& ((boolean)session.getAttribute("login"))) { %>
		<div>���� �α��� ���Դϴ�. </div> <a href="/JspBoard/jspboard/logout"><button id="logOutButton">�α׾ƿ�</button></a>
	<% } else { %>
		<div style="border: solid 1px black; width: 290px"> 
			<form action="/JspBoard/jspboard/login" method="POST" id="loginForm" /></form>
			<table>
				<tr>
					<th>�α���</th>
				</tr>
				<tr>
					<th>���̵�</th>
					<td><input type="text" name="user_id" form="loginForm"/></td>
				</tr>
				<tr>
					<th>��й�ȣ</th>
					<td><input type="password" name="user_password" form="loginForm"/></td>
				</tr>
				<tr>
					<td><input type="submit" value="�α���" form="loginForm"/></td>
					<td><button id="signUpButton">ȸ������</button></td>
				</tr>
			</table>
		</div>
	<% } %>
	
	
	<!--  
	<div style="border: solid 1px black;"> 
		<form action="/JspBoard/jspboard/login" method="POST" id="loginForm" /></form>
		<table>
			<tr>
				<th>�α���</th>
			</tr>
			<tr>
				<th>���̵�</th>
				<td><input type="text" name="user_id" form="loginForm"/></td>
			</tr>
			<tr>
				<th>��й�ȣ</th>
				<td><input type="password" name="user_password" form="loginForm"/></td>
			</tr>
			<tr>
				<td><input type="submit" value="�α���" form="loginForm"/></td>
				<td><button id="signUpButton">ȸ������</button></td>
			</tr>
		</table>
	</div>
	-->
	
	<hr>
	
	<div>
		<form action="/JspBoard/jspboard/writepage"> <input type="submit" value="�� ����"/></form>
	</div>

	<div>
		<table border="1">
			<tr>
				<th>��ȣ</th>
				<th>����</th>
				<th>�ۼ���</th>
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