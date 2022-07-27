<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3># 사원 정보 수정하기</h3>
	
	<form action="./modify" method="POST">
		employee_id : <input type="number" name="employee_id" value="${employee1.employee_id }" disabled/> <br>
		first_name	: <input type="text" name="first_name" value="${employee1.first_name }" /> <br>
		last_name 	: <input type="text" name="last_name" value="${employee1.last_name }"/> <br>
		email 		: <input type="text" name="email" value="${employee1.email }"/> <br>
		phone_number: <input type="text" name="phone_number" value="${employee1.phone_number }" /> <br>
		salary		: <input type="number" name="salary" value="${employee1.salary }" /> <br>
		<input type="submit" value="modify" />
	</form>
	

</body>
</html>