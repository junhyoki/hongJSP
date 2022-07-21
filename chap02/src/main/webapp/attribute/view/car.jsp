<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	// pageContext : �� ������������ ����� �� �ִ� JSP ���� ��ü
	pageContext.setAttribute("car", "Kia");

	// Attribute���� ��� Ÿ���� ������ ���� �� �ֱ� ������ Object Ÿ������ ��������
	
	// application : �� ���ø����̼� ����(WAS)�� ������ ��� �ִ� JSP ���� ��ü
	String sessionCar = (String)session.getAttribute("car");
	// session : ���� ������ ��� �ִ� JSP ���� ��ü
	String requestCar = (String)request.getAttribute("car");
	// request : ��û ������ ��� �ִ� JSP ���� ��ü
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

	����: <%=applicationCar %> <br>
	����: <%=sessionCar %> <br>
	��û: <%=requestCar %> <br>
	������: <%=pageCar %> <br>
	
	<hr>
	
	�׳� ����: ${car } (���� ����� ������ car�� ���´�.) <br>
	������Ʈ�� ����: ${requestScope.car } <br>
	���ǿ� ����: ${sessionScope.car } <br>
	WAS�� ����: ${applicationScope.car } <br>
	
	<hr>

</body>
</html>