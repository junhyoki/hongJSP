package chap04.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap04.model.Employee;

public class AddEmployeeServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("잡아이디 : " + req.getParameter("job_id"));
		
		Employee employee = new Employee(
			req.getParameter("first_name"),
			req.getParameter("last_name"),
			Double.parseDouble(req.getParameter("salary")),
			Double.parseDouble(req.getParameter("commission_pct")),
			req.getParameter("job_id"),
			Integer.parseInt(req.getParameter("department_id")),
			req.getParameter("hire_date"),
			req.getParameter("email"),
			req.getParameter("phone_number"),
			Integer.parseInt(req.getParameter("manager_id"))
			);
		
		req.setAttribute("employee_info", employee);
		
		req.getRequestDispatcher("/employee/add").forward(req, resp);
	}

}
