package chap04.process;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap04.dao.DepartmentDAO;
import chap04.dao.JobDAO;
import chap04.database.DBConnector;
import chap04.model.Employee;

public class EmployeeModifyFormProcess implements Process {
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		int emp_id = Integer.parseInt(request.getParameter("emp")); 
		
		String sql = "SELECT * FROM employees2 WHERE employee_id=?";
		
		//String sql2 = "SELECT DISTINCT job_id, job_title FROM jobs";
		request.setAttribute("jobs", JobDAO.getList());
		//String sql3 = "SELECT DISTINCT department_id, department_name FROM departments";
		request.setAttribute("departments", DepartmentDAO.getList());
		
		try (
			Connection conn = DBConnector.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
		) {
			
			pstmt.setInt(1, emp_id);
			
			try (
				ResultSet rs = pstmt.executeQuery();					
			) {
				request.setAttribute("employee", rs.next() ? new Employee(rs) : null);  
			}
			
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return "/WEB-INF/views/employee/modiForm.jsp";
	}

}
