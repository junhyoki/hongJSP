<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>수정하기</title>
</head>
<body>
		
	<form action="/JspBoard/jspboard/modify" method="POST" id="modifyForm" /></form>
	
	<table>
		<tr>
			<th>제목</th>
		</tr>
		<tr>
			<td> <input type="text" name="title" value="${post.post_title }" style="width:300px" form="modifyForm" /></td> 
		</tr>
		<tr>
			<th>내용</th>
		</tr>
		<tr>
			<td> <textarea name="content" cols="41" rows="10" form="modifyForm">${post.post_content }</textarea> </td>
		</tr>
		<tr>
			<td><input type="submit" value="수정하기" form="modifyForm" /></td>
		</tr>
	</table>
	
	<input type="hidden" name="num" value="${post.post_num }" form="modifyForm"/>

</body>
</html>