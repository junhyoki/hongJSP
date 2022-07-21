<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3># forward</h3>
	
	<ul>
		<li>
			사용자가 보낸 요청을 하나의 서블렛(또는 JSP)에서 처리하다가
			다른 서블렛(또는 JSP)로 전달하여 처리를 이어나가는 것
		</li>
		<li>
			포워드는 요청을 그대로 다른 서블렛 또는 JSP로 전달하는 것이기 때문에
			요청에 실려있는 모든 정보도 함께 그대로 전달된다
		</li>
		<li>
			주로 도착한 요청에 대해,
			서블렛에서 자바를 사용한 처리(Control)를 모두 끝마친 후
			JSP로 포워드하는 식으로 사용한다(View)
		</li>
	</ul>
	
	<h3># redirect</h3>
	
	<ul>
		<li>리디렉트는 접속한 클라이언트가 해당 주소로 다시 요청을 보내게 만드는 것</li>
		<li>실제로 사용자의 웹 브라우저에서 새로운 요청을 만들어 보내기(주소창에 새 주소를 입력) 
			때문에 이전 요청객체에 실려 있던 정보는 남아있을 수 없다</li>
	</ul>
	
	<hr>
	
	
	<div>
		<a href="/chap02/forward/controller?name=hong&age=33">포워드를 통해 Page1 가기</a>
	</div>
	
	<div>
		<<a href="/chap02/redirect/controller?name=kim&age=22">리디렉트를 통해 Page1 가기</a>
	</div>
	



</body>
</html>