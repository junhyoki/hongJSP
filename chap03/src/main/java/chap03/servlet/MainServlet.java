package chap03.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		// URI를 보고 어느 view로 포워드 할지를 정할 수 있다.
		System.out.println("user uri: " + req.getRequestURI());
		
		String uri = req.getRequestURI();
		String path = null;
		
		switch (uri) {
			case "/chap03/main/jstl" :
				path = "/WEB-INF/views/jstl.jsp";
				break;
			case "/chap03/main/el" :
				path = "/WEB-INF/views/el.jsp";
				break;
			default :
				path = "/WEB-INF/views/index.jsp";
				break;
		}
		req.getRequestDispatcher(path).forward(req, resp);
	}
}
