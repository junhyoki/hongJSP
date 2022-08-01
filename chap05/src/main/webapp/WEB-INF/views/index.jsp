<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/views/jspf/taglib.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Include Ȱ���ϱ�</title>
<%@ include file="/WEB-INF/views/jspf/bootstrap_header.jspf" %>
</head>
<body>

	<c:set var="x" value="10" scope="page"/>
	<c:set var="x" value="20" scope="request"/>
	<c:set var="x" value="30" scope="session"/>
	<c:set var="x" value="40" scope="application"/>
	<p> x: ${x } </p>
	
	<h3># include</h3>
	
	<%@ include file="/WEB-INF/views/include1.jsp" %>  	<!-- ������ ������ ���ѹ��� -->
	<jsp:include page="/WEB-INF/views/include2.jsp"/>	<!-- req�� ������ resp�� �޾ƿ��� ��� (== Dispatcher.include(req, resp))-->
	
	<dl>
		<dt>include directive</dt>
		<dd>�ش� ������ �״�� ���� ���Ͽ� ���Խ�Ű�� ���</dd>
		<dt>jsp include</dt>
		<dd>�ش� ������ �����Ų ����� ���� ���Ͽ� ���Խ�Ű�� ���</dd>
	</dl>

</body>
</html>