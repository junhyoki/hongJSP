package chap04.process;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EmployeeAddFormProcess implements Process {
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		return "/WEB-INF/views/employee/addForm2.jsp";
	}
	

}
