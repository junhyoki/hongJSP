package chap02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/redirect/controller")
public class RedirectServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		System.out.println("Redirect 서블릿에 왔다갔다왔다갔다");
		System.out.println("name: " + req.getParameter("name") + ", age: " + req.getParameter("age"));
		
		// redirect : 클라이언트에게 새로운 요청을 보낼 것을 응답한다
		resp.sendRedirect("../forward/page/page1.jsp");
	}
}
