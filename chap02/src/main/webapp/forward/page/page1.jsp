<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Page1</title>
</head>
<body>

	<h1>페이지1 입니다</h1>
	
	<div><%=request.getParameter("name") %>[<%=request.getParameter("age") %>]</div>

	<div>${result }</div>
	<div>${result2 }</div>

</body>
</html>