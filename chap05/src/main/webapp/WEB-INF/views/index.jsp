<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/views/jspf/taglib.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Include 활용하기</title>
<%@ include file="/WEB-INF/views/jspf/bootstrap_header.jspf" %>
</head>
<body>

	<c:set var="x" value="10" scope="page"/>
	<c:set var="x" value="20" scope="request"/>
	<c:set var="x" value="30" scope="session"/>
	<c:set var="x" value="40" scope="application"/>
	<p> x: ${x } </p>
	
	<h3># include</h3>
	
	<%@ include file="/WEB-INF/views/include1.jsp" %>  	<!-- 파일을 포함을 시켜버림 -->
	<jsp:include page="/WEB-INF/views/include2.jsp"/>	<!-- req를 보내서 resp을 받아오는 방식 (== Dispatcher.include(req, resp))-->
	
	<dl>
		<dt>include directive</dt>
		<dd>해당 파일을 그대로 현재 파일에 포함시키는 방식</dd>
		<dt>jsp include</dt>
		<dd>해당 파일을 실행시킨 결과를 현재 파일에 포함시키는 방식</dd>
	</dl>

</body>
</html>