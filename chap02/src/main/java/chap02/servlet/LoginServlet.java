package chap02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/attribute/login")
public class LoginServlet extends HttpServlet{

		@Override
		protected void doPost(HttpServletRequest request, HttpServletResponse response) 
				throws ServletException, IOException {
			
			String userID = request.getParameter("user_id");
			String userPassword = request.getParameter("user_password");
			
			HttpSession session = request.getSession();
			
			// 로그인 여부
			if ("admin".equals(userID) && "1234".equals(userPassword)) {
				session.setAttribute("login", true);
			} else {
				session.setAttribute("login", false);
			}
			
			request.getRequestDispatcher("/attribute/view/login_result_page.jsp")
				   .forward(request, response);
		}
}
