<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3># 새 사원 추가하기</h3>
	
	<!-- /chap04/employee/add_form -->
	<form action="./add_emp" method="POST">
		employee_id : <input type="number" name="employee_id" /> <br>
		last_name 	: <input type="text" name="last_name"/> <br>
		email 		: <input type="text" name="email" /> <br>
		hire_date 	: <input type="date" name="hire_date" /> <br>
		job_id 		: <input type="text" name="job_id" /> <br>
		<input type="submit" value="insert" />
	</form>

</body>
</html>