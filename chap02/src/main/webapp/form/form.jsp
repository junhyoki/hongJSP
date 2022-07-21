<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3># form 태그</h3>

	<ul>
		<li>내부에서 submit이 발생하면 내부의 모든 데이터와 함께 서버로 요청을 보내는 태그</li>
		<li>데이터를 전송할 때 input태그의 name속성이 key역할을 한다</li>
		<li>사용자가 입력한 내용은 value 역할을 한다</li>
		<li>action 속성: 어느 URL로 요청을 보낼지 적는다</li>
		<li>method 속성: 어떤 방식으로 요청할지 적는다 (GET, POST, PUT, DELETE ...)</li>
	</ul>
	
	<h3># GET방식 요청 (Servlet으로)</h3>

	<ul>
		<li>데이터가 URL뒤에 붙어서 요청과 함께 서버로 전달된다. ?key=value&key=value&...</li>
		<li>GET방식은 노출되어도 상관 없는 값들만 전송해야 한다. (비밀번호 X)</li>
		<li>사용자가 주소를 직접 수정하여 데이터를 전달할 수도 있으므로 주의해야 한다.</li>
	</ul>

	<form action="http://localhost:8888/chap02/form/register" method="GET">
		이름 : <input type="text" name="name" /> <br>
		나이 : <input type="number" name="age" /> <br>
		비밀번호 : <input type="password" name="pwd" /> <br>
		취미 : 
		<input type="checkbox" name="hobby" value="football"/> 축구 <br>
		<input type="checkbox" name="hobby" value="swim"/> 수영 <br>
		<input type="checkbox" name="hobby" value="surfing"/> 서핑 <br>
		<input type="checkbox" name="hobby" value="baduk"/> 바둑 <br>
		<input type="submit" value="가입하기" />
	</form>

	<h3># POST 방식 요청 (Servlet으로)</h3>

	<form action="http://localhost:8888/chap02/form/register" method="POST">이름 : <input type="text" name="name" /> <br>나이 : <input type="number" name="age" /> <br>비밀번호 : <input type="password" name="pwd" /> <br>취미 : <input type="checkbox" name="hobby" value="football"/> 축구 <br><input type="checkbox" name="hobby" value="swim"/> 수영 <br><input type="checkbox" name="hobby" value="surfing"/> 서핑 <br><input type="checkbox" name="hobby" value="baduk"/> 바둑 <br><input type="submit" value="가입하기" /></form>

	<h3># 입장권</h3>

	<form action="http://localhost:8888/chap02/form/register" method="POST">
		<h4>주간권</h4>
		대인 : <input type="number" name="adult" />
		청소년 : <input type="number" name="teen" />
		소인/경로 : <input type="number" name="child/senior" /> <br>

		<h4>야간권</h4>
		대인 : <input type="number" name="adultN" />
		청소년 : <input type="number" name="teenN" />
		소인/경로 : <input type="number" name="child/seniorN" /> <br>

		<input type="submit" value="구매하기" />
	</form>
	

	<h3># GET 방식 요청 (JSP로)</h3>
	
	<!-- 
		URL의 상대 경로는 프로젝트 폴더 기준이 아니라
		사용자의 웹 브라우저 주소창의 URL 기준이다
		
		ex: URL이 http://localhost:8888/chap02/form/form.jsp 일 때
			
			./  => http://localhost:8888/chap02/form/
			../ => http://localhost:8888/chap02/
			/   => http://localhost:8888/ (현재 도메인의 최상위 폴더)
			//  => http://		
	 -->

	<form action="./register.jsp" method="GET">
		이름 : <input type="text" name="name" /> <br>
		나이 : <input type="number" name="age" /> <br>
		비밀번호 : <input type="password" name="pwd" /> <br>
		취미 : 
		<input type="checkbox" name="hobby" value="football"/> 축구 <br>
		<input type="checkbox" name="hobby" value="swim"/> 수영 <br>
		<input type="checkbox" name="hobby" value="surfing"/> 서핑 <br>
		<input type="checkbox" name="hobby" value="baduk"/> 바둑 <br>
		<input type="submit" value="가입하기" />
	</form>
	
	

</body>
</html>