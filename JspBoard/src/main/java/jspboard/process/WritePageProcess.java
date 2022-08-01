package jspboard.process;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class WritePageProcess implements Process {
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		
		if (session.getAttribute("login") != null 
			&& ((boolean)session.getAttribute("login"))) { 
			return "/WEB-INF/views/post/write.jsp";	
		} else { 
			return "redirect:/JspBoard/jspboard/home";
		} 
	}
}