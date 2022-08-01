<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


	<form action="/JspBoard/jspboard/signup" method="POST" id="signUpForm">
		<table>
			<tr>
				<th><h3>회원가입</h3></th>
			</tr>
			<tr>
				<th>이름</th>
				<td> <input type="text" name="user_name" form="signUpForm" /></td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td> <input type="date" name="user_birth" form="signUpForm" /></td>
			</tr>
			<tr>
				<th>아이디</th>
				<td> <input type="text" name="user_id" form="signUpForm" /></td>
				<td> <button>중복확인</button></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td> <input type="password" name="user_password" form="signUpForm" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="가입하기" form="signUpForm" /></td>
			</tr>
		</table>
	</form>

</body>
</html>