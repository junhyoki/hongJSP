<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Web Server</title>
</head>
<body>

	<h3># URL의 구조</h3>
	
	<p>프로토콜://IP주소(DNS):포트번호/원하는 자원의 경로(URI)</p>
	
	<h3># 프로토콜 (Protocol)</h3>
	
	<ul>
		<li>통신 규칙</li>
		<li>ex> HTTP는 서버로 요청을 보내면 응답을 받는다</li>
		<li>http(80), ftp(20), https(443), telnet(23)... 등등</li>
		<li>각 프로토콜 마다 주로 사용하는 포트번호가 있다 (기본 포트 번호)</li>
		<li>
			해당 프로토콜의 주 포트번호를 사용한다면 IP주소 뒤의:port를 생략할 수 있다
			ex> http://www.naver.com:80, https://www.naver.com:443
		</li>
		<li>하지만, 해당 포트번호를 반드시 사용할 필요는 없다</li>
	</ul>
	
	<h3># IP주소</h3>
	
	<ul>
		<li>전 세계 네트워크 상에서 어떤 한 컴퓨터를 찾아가기 위한 주소</li>
		<li>0.0.0.0 ~ 255.255.255.255 (4byte)</li>
		<li>공인IP(진짜 IP주소) 하나에 사설IP(192.168...) 여러개를 붙여 사용한다</li>
	</ul>
	
	<h3># DNS (Domain Name Service)</h3>
	
	<ul>
		<li>URL의 IP주소 대신 입력할 수 있는 이름</li>
		<li>IP주소를 외우기 힘들어서 대신 외우기 쉬운 이름으로 치환해주는 서비스</li>
		<li>URL에 IP주소 대신 도메인을 사용하면 근처의 DNS서버에 들러서 IP주소를 찾은 후 서버를 찾아간다</li>
	</ul>
	
	<h3># 포트번호 (Port)</h3>
	
	<ul>
		<li>네트워크를 통해 도착한 데이터가 어떤 프로그램의 데이터인지 구분하기 위한 번호</li>
		<li>0 ~ 65535번 까지 있다</li>
		<li>고정적으로 사용하는 잘 알려진 포트번호(well-known port)들이 있다</li>
		<li>잘 알려진 포트번호들은 URL에서 생략이 가능하다</li>
	</ul>

</body>
</html>

