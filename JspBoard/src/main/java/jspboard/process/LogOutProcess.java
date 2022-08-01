package jspboard.process;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogOutProcess implements Process {
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		session.removeAttribute("login");
		session.removeAttribute("id");
		session.removeAttribute("pass");
		
		System.out.println("세션 삭제");
		
		return "redirect:/JspBoard/jspboard/home";
	}

}
