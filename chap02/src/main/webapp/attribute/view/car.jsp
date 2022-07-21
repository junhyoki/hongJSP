<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	// pageContext : 이 페이지에서만 사용할 수 있는 JSP 내장 객체
	pageContext.setAttribute("car", "Kia");

	// Attribute에는 모든 타입을 값으로 넣을 수 있기 때문에 Object 타입으로 꺼내진다
	
	// application : 웹 어플리케이션 서버(WAS)의 정보를 담고 있는 JSP 내장 객체
	String sessionCar = (String)session.getAttribute("car");
	// session : 세션 정보를 담고 있는 JSP 내장 객체
	String requestCar = (String)request.getAttribute("car");
	// request : 요청 정보를 담고 있는 JSP 내장 객체
	String applicationCar = (String)application.getAttribute("car");
	String pageCar = (String)pageContext.getAttribute("car");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Car</title>
</head>
<body>

	서버: <%=applicationCar %> <br>
	세션: <%=sessionCar %> <br>
	요청: <%=requestCar %> <br>
	페이지: <%=pageCar %> <br>
	
	<hr>
	
	그냥 접근: ${car } (가장 가까운 영역의 car가 나온다.) <br>
	리퀘스트에 접근: ${requestScope.car } <br>
	세션에 접근: ${sessionScope.car } <br>
	WAS에 접근: ${applicationScope.car } <br>
	
	<hr>

</body>
</html>