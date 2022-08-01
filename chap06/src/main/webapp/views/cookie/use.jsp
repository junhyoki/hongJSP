<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	// Servlet
	
	// 해당 path의 쿠키가 요청에 함께 실려오게 된다.
	Cookie[] cookies = request.getCookies();
	
	if (cookies != null) {
		
		for (int i = 0, len = cookies.length ; i < len; ++i) {
			
			String name = cookies[i].getName();
			String value = cookies[i].getValue();
			
			System.out.println(name + "=" + value);
		}
	}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1>쿠키 구경하기</h1>

</body>
</html>