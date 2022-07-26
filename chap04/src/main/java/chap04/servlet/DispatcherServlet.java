package chap04.servlet;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap04.process.*;
import chap04.process.Process;

public class DispatcherServlet extends HttpServlet {
	
	final private static String REDIRECT = "redirect:";
	HashMap<String, Process> uri_mapping;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		uri_mapping = new HashMap<>();
		uri_mapping.put("/employee/list", new EmployeeListProcess());
		uri_mapping.put("/employee/add_form", new EmployeeAddFormProcess());
		uri_mapping.put("/employee/add_emp", new EmployeeAddProcess());
		uri_mapping.put("/employee/add", new EmployeeCreateProcess());
		// url_mapping.put("/employee/modify", new EmployeeUpdateProcess());
		super.init(config);
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		//super.service(req, resp);
		
		String uri = req.getRequestURI();
				
		System.out.println("request uri: " + uri);
		System.out.println("remove context path: " + uri.substring(req.getContextPath().length()));
		
		uri = uri.substring(req.getContextPath().length());
		
		// 사용자가 접속한 주소(URI)로 알맞은 처리(Process)를 꺼낸다.
		Process process = uri_mapping.get(uri);
		
		System.out.println(process);
		
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
