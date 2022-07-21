<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<img src="/chap02/assets/img/ticket.png" alt="price" />
	
	<form action="" method="GET">
		대인 : <input type="text" name="big" /> <br>
		청소년 : <input type="number" name="youth" /> <br>
		소인/경로 :
		<% for (int i = 1; i <= 4; ++i) { %> 
			<input id="small<%=i %>" type="radio" name="small" value="<%=i %>" />
			<label for="small<%=i %>"><%=i %>명</label>
		<% } %>
		<button type="submit">보내기</button>
	</form>

</body>
</html>