<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Http Protocol</title>
</head>
<body>

	<h3># HTTP 프로토콜의 작동 순서 (네이버 웹툰을 보는 경우)</h3>

	<ol>
		<li>
			사용자(클라이언트)가 웹 브라우저 주소창에 보고싶은 웹툰의 주소를 입력한다.
			(링크를 클릭하는 것은 주소창에 해당 링크 태그의 href 속성 값을 입력하는 것과 같다)
		</li>
		<li>
			웹툰의 주소에 포함된 IP주소(또는 도메인)를 통해 해당 웹서버로 요청(request)을 보낸다.
		</li>
		<li>
			네이버의 웹 서버는 요청을 받고, 클라이언트가 보낸 웹 주소(URL)에 포함된 웹툰 번호를 보고
			알맞은 페이지를 생성(어떤 웹툰을 응답할지 결정)하여 응답(response)한다.
		</li>
		<li>
			완성된 응답은 HTML, CSS, Javascript로 이루어져 있으며 (데이터만 응답하는 경우도 있음)
			서버로 요청을 보낸 사용자의 웹 브라우저에서 해석된다.
		</li>
		<li>
			웹 브라우저에 의해 해석된 응답은 클라이언트에게 보여지며,
			클라이언트는 해당 페이지를 통해 새로운 다음 요청을 서버로 보낸다.
		</li>
	</ol>
	
	<h3># HTTP 요청 메서드</h3>
	
	<ul>
		<li>HTTP 프로토콜은 서버에 다양한 방식(method)으로 요청을 보낼 수 있다</li>
		<li>같은 주소로 보내는 요청이라도 설정된 요청 메서드에 따라 각각 다른 작업을 수행할 수 있다</li>
		<li>GET  : 데이터를 URL 뒤에 붙여서 요청을 보내는 방식. 주로 SELECT에 사용</li>
		<li>POST : 데이터를 요청 객체의 body에 붙여서 보내는 방식. 주로 INSERT에 사용</li>
		<li>PUT  : 주로 UPDATE 작업에 사용</li>
		<li>DELETE : 주로 DELETE 작업에 사용</li>
		<li>...등등</li>
	</ul>

</body>
</html>




