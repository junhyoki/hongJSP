package chap04.process;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap04.database.DBConnector;
import chap04.model.Employee;

public class EmployeeModifyFormProcess1 implements Process {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String sql = "SELECT * FROM employees2 WHERE employee_id=?";
		
		try (
				Connection conn = DBConnector.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
			) {
				pstmt.setInt(1, Integer.parseInt(request.getParameter("employee_id")));
				ResultSet rs = pstmt.executeQuery();
				rs.next();
				Employee emp = new Employee(
						rs.getInt("employee_id"),
						rs.getString("first_name"),
						rs.getString("last_name"),
						rs.getString("email"),
						rs.getString("phone_number"),
						rs.getString("hire_date"),
						rs.getString("job_id"),
						rs.getDouble("salary"),
						rs.getDouble("commission_pct"),
						rs.getInt("manager_id"),
						rs.getInt("department_id"));
				
				request.setAttribute("employee1", emp);
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		return "/WEB-INF/views/employee/modifyForm.jsp";
	}

}
