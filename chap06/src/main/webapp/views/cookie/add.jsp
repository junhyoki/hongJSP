<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String name = request.getParameter("name");
	String value = request.getParameter("value");
	String maxAge = request.getParameter("max-age");

	// # 서버측에서 쿠키 만들기
	
	// 1. 새 쿠키 인스턴스를 생성한다
	Cookie cookie = new Cookie(name, value);
	
	// 2. 쿠키 인스턴스를 원하는 대로 설정한다
	
	try {
		cookie.setMaxAge(Integer.parseInt(maxAge)); 
	} catch (NumberFormatException e) {
		System.out.println("cookie max-age = session");
	}
	
	// 쿠키의 유효 시간 설정 (초), 설정하지 않으면 웹 브라우저 종료시 삭제 (Session)
	// 0으로 섲렁시 해당 쿠키를 웹 브라우저에서 삭제한다
	
	// cookie.setPath() // 이 쿠키가 사용하는 경로를 지정, 지정하지 않으면 현재 경로를 사용함
	
	cookie.setHttpOnly(true); // 쿠키로 http 이외의 프로그래밍 언어를 보낼 수 없도록 설정 (보안), 설정하지 않으면 false
	
	// cookie.setComment("쿠키에 대한 설명..");
	
	// 3. 해당 쿠키를 응답에 추가해 놓는다
	response.addCookie(cookie);
	
	response.sendRedirect(request.getContextPath() + "/views/cookie/index.jsp");
%>