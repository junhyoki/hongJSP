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
	
	<form action="/chap04/employee/addemp" method="POST">
		
		first_name : <input type="text" name="first_name" placeholder="Input first_name" autocomplete="off" /> <br>
		last_name : <input type="text" name="last_name" placeholder="Input last_name" autocomplete="off" /> <br>
		email : <input type="text" name="email" placeholder="Input email" autocomplete="off" /> <br>
		phone_number : <input type="text" name="phone_number" placeholder="Input phone_number" autocomplete="off" /> <br>
		hire_date : <input type="date" name="hire_date" placeholder="Input hire_date" autocomplete="off" /> <br>
		job_id :<input type="radio" id="it" name="job_id" value="IT_PROG">
 				<label for="it">it prog</label>
  				<input type="radio" id="fi" name="job_id" value="FI_ACCOUNT">
  				<label for="fi">fi account</label>
  				<input type="radio" id="pu" name="job_id" value="PU_CLERK">
  				<label for="pu">pu clerk</label> <br>
		salary : <input type="number" name="salary" placeholder="Input salary" autocomplete="off" /> <br>
		commission_pct : <input type="number" step="0.1" name="commission_pct" placeholder="Input commission_pct" autocomplete="off" /> <br>
		manager_id : <input type="number" name="manager_id" placeholder="Input manager_id" autocomplete="off" /> <br>
		department_id : <input type="number" name="department_id" placeholder="Input department_id" autocomplete="off" /> <br>
		<input type="submit" value="사원 추가하기" />
	</form>

</body>
</html>