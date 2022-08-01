<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시글 작성</title>
</head>
<body>
	
	<form action="/JspBoard/jspboard/write" method="POST" id="writeForm" /></form>
	
	<table>
		<tr>
			<th>제목</th>
		</tr>
		<tr>
			<td> <input type="text" name="title" style="width:300px" form="writeForm" /></td> 
		</tr>
		<tr>
			<th>내용</th>
		</tr>
		<tr>
			<td> <textarea name="content" cols="41" rows="10" form="writeForm"></textarea> </td>
		</tr>
		<tr>
			<td><input type="submit" value="작성" form="writeForm" /></td>
		</tr>
	</table>
</body>
</html>