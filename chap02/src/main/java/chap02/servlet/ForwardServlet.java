package chap02.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/forward/controller")
public class ForwardServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		/*
		 	전달받은 요청에 따라 알맞은 처리를 하기에는 서블릿이 좀 더 적합하다 (JAVA코드를 사용하기 편하다)
		 	하지만 처리가 끝난 후, 알맞은 응답 페이지를 만들기에는 JSP가 좀 더 편하다
		 	
		 	처리는 서블릿에서 진행하고 (컨트롤러 역할)
		 	사용자에게 보여질 화면 생성은 JSP에서 진행(뷰 역할)하는 방식으로 역할을 분담한다 
		*/ 
		
		String name = req.getParameter("name");
		String age = req.getParameter("age");
		
		System.out.println("이름: " + name + ", 나이: " + age);
		
		/*
			# Attribute
			
			- 다른 페이지로 포워드 할 때 데이터를 실어놓을 수 있는 공간
			- Java Object를 자유롭게 사용할 수 있다
		*/
		req.setAttribute("result", true);
		req.setAttribute("result2", new ArrayList<>() {
			{
				this.add("String");
				this.add("Integer");
				this.add("Boolean");
				this.add("Character");
			}
		});
		
		// forward
		// - 이 서블릿에서 응답을 하지 않고 다른 JSP 또는 서블릿으로 요청을 그대로 전달한다
		// - 포워드 시 경로는 프로젝트 이름을 제외해야 한다
		RequestDispatcher dispatcher = req.getRequestDispatcher("/forward/page/page1.jsp");
		
		// req, resp를 그대로 전달
		dispatcher.forward(req, resp);
	}
	
}
