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
				<th><h3>ȸ������</h3></th>
			</tr>
			<tr>
				<th>�̸�</th>
				<td> <input type="text" name="user_name" form="signUpForm" /></td>
			</tr>
			<tr>
				<th>�������</th>
				<td> <input type="date" name="user_birth" form="signUpForm" /></td>
			</tr>
			<tr>
				<th>���̵�</th>
				<td> <input type="text" name="user_id" form="signUpForm" /></td>
				<td> <button>�ߺ�Ȯ��</button></td>
			</tr>
			<tr>
				<th>��й�ȣ</th>
				<td> <input type="password" name="user_password" form="signUpForm" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="�����ϱ�" form="signUpForm" /></td>
			</tr>
		</table>
	</form>

</body>
</html>