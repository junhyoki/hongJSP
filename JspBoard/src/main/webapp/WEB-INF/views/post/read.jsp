<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<form action="/JspBoard/jspboard/modiForm" method="POST" id="modiForm" /></form>
	<form action="/JspBoard/jspboard/delete" method="POST" id="deleteForm" /></form>

	<table>
		<tr>
			<th><h3> ${post.post_title } </h3></th> 
		</tr>
		<tr>
			<td><b>�ۼ���</b> : ${post.post_writer }</td>
		</tr>
		<tr>
			<th>����</th>
		</tr>
		<tr>
			<td> <div style="width:350px; border: solid 1px black">${post.post_content }</div> </td>
		</tr>
		<tr>
			<td>��й�ȣ : <input type="password" name="password" form="deleteForm"/>
			<button name="num" value="${post.post_num }" form="deleteForm">����</button></td>
		</tr>
		<tr>
				<td>��й�ȣ : <input type="password" name="password" form="modiForm"/>
				<button name="num" value="${post.post_num }" form="modiForm">����</button></td>
		</tr>
	</table>
	
	<input type="hidden" name="writer" value="${post.post_writer }" form="modiForm" />
	<input type="hidden" name="writer" value="${post.post_writer }" form="deleteForm" />


</body>
</html>