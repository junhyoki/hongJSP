<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title># Http Session</title>
</head>
<body>

	<ol>
		<li>웹 서버는 처음 접속하는 사용자의 쿠키에 세션ID를 추가한다.</li>
		<li>이 때, 세션ID는 함부로 위조/변조하기 힘든 어려운 값이어야 한다.</li>
		<li>사용자의 쿠키에 저장된 세션ID는 해당 사용자가 요청을 보낼 때마다 함께 실려오게 된다.</li>
		<li>쿠키에 저장된 세션ID는 기본적으로 사용자의 웹 브라우저가 종료될 때까지 유지된다.
			(물론, 설정을 변경할 수 있다)</li>
		<li>세션에 데이터를 저장하는 것은 서버 컴퓨터의 자원을 사용하는 것이므로,
			너무 많은 데이터를 저장해서는 안된다.</li>
	</ol>
	
	<h3># 세션 어트리뷰트 추가하기</h3>
	
	<form action="./add.jsp" method="POST" id="attrAddForm">
		<input type="text" name="key" placeholder="Input Key" autocomplete="off" />
		<input type="text" name="value" placeholder="Input Value" autocomplete="" />
	</form>
	
	<!-- 해당 form 바깥에 해당 form 소속의 id속성을 통해 input 태그를 추가할 수도 있다 -->
	<input type="number" name="age" form="attrAddForm" placeholder="Input Age" disabled />
	<input type="submit" form="attrAddForm"/>
	
	<hr>
	
	<form action="/chap02/attribute/change" method="POST" id="changeform"></form>
	<form action="/chap02/attribute/remove" method="POST" id="removeform"></form>
	<%
		// 현재 세션에 있는 모든 어트리뷰트들을 html에 출력
		
		// 세션에 있는 모든 어트리뷰트의 이름(key)들을 꺼냄
		java.util.Enumeration<String> attrNames = session.getAttributeNames();
	
		// 다음 요소가 있으면 반복
		
		out.print("<table border=\"1\"><tr><th>Key</th><th>Value</th>" 
			+ "<th>값 수정</th><th>삭제</th></tr>");
		
		while (attrNames.hasMoreElements()) {
			String attrName = attrNames.nextElement(); // 어트리뷰트 이름을 하나 꺼냄
			
			if (attrName != null) {
				out.print(String.format("<tr><td>%s</td><td>%s</td>"
				+ "<td><input type=\"text\" name=\""+ attrName +"\" form=\"changeform\"><button name=\"attrName\" value=\""+ attrName +"\" form=\"changeform\">수정</button></td>"
				+ "<td><button name=\"removekey\" value=\""+ attrName +"\" form=\"removeform\">삭제</button></td></tr>",
					attrName, session.getAttribute(attrName)));
			}
		}
		out.print("</table>");
		
	%>
	
</body>
</html>