package jspboard.servlet;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspboard.process.*;
import jspboard.process.Process;

public class DispatcherServlet extends HttpServlet {
	
	final private static String REDIRECT = "redirect:";
	HashMap<String, Process> uri_mapping;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		uri_mapping = new HashMap<>();
		uri_mapping.put("/jspboard/home", new HomeProcess());
		uri_mapping.put("/jspboard/signuppage", new SignUpPageProcess());
		uri_mapping.put("/jspboard/login", new LoginProcess());
		uri_mapping.put("/jspboard/signup", new SignUpProcess());
		uri_mapping.put("/jspboard/logout", new LogOutProcess());
		uri_mapping.put("/jspboard/writepage", new WritePageProcess());
		uri_mapping.put("/jspboard/write", new WriteProcess());
		uri_mapping.put("/jspboard/read", new ReadProcess());
		uri_mapping.put("/jspboard/modiForm", new ModifyFormProcess());
		uri_mapping.put("/jspboard/delete", new DeleteProcess());
		uri_mapping.put("/jspboard/modify", new ModifyProcess());
		
		
		super.init(config);
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		String uri = req.getRequestURI();
				
		System.out.println("request uri: " + uri);
		System.out.println("remove context path: " + uri.substring(req.getContextPath().length()));
		
		uri = uri.substring(req.getContextPath().length());
		
		// 사용자가 접속한 주소(URI)로 알맞은 처리(Process)를 꺼낸다.
		Process process = uri_mapping.get(uri);
		
		String nextPath;
		if (process != null) {
			nextPath = process.process(req, resp);
			
			if (nextPath.startsWith(REDIRECT)) {
				resp.sendRedirect(nextPath.substring(REDIRECT.length()));
				return;
			}
		} else {
			nextPath = "/WEB-INF/views/errorpage/not_found.jsp";
		}
		
		req.getRequestDispatcher(nextPath).forward(req, resp);
	}

}
