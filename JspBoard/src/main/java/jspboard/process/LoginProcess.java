package jspboard.process;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jspboard.dao.PasswordDAO;

public class LoginProcess implements Process {
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		String userID = request.getParameter("user_id");
		String userPassword = request.getParameter("user_password");
		
		System.out.println(userID);
		
		HttpSession session = request.getSession();
		String pass = PasswordDAO.getPassword(userID);
		
		// 로그인 여부
		if (userPassword.equals(pass)) {
			session.setAttribute("login", true);
			session.setAttribute("id", userID);
			session.setAttribute("pass", pass);
		} else {
			session.setAttribute("login", false);
		}
		
		return "redirect:/JspBoard/jspboard/home";
	}

}
