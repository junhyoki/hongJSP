package chap04.process;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap04.database.DBConnector;
import chap04.model.Employee;

public class EmployeeCreateProcess implements Process {
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		String sql = "INSERT INTO employees VALUES (employees_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try (
				Connection conn = DBConnector.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);	
			){
				Employee employee = (Employee)request.getAttribute("employee_info");
				
				System.out.println("디파트트트 : " + employee.getDepartment_id());
				
				pstmt.setString(1, employee.getFirst_name());
				pstmt.setString(2, employee.getLast_name());
				pstmt.setString(3, employee.getEmail());
				pstmt.setString(4, employee.getPhone_number());
				pstmt.setString(5, employee.getHire_date());
				pstmt.setString(6, employee.getJob_id());
				pstmt.setDouble(7, employee.getSalary());
				pstmt.setDouble(8, employee.getCommission_pct());
				pstmt.setInt(9, employee.getManager_id());
				pstmt.setInt(10, employee.getDepartment_id());
				
				int row = pstmt.executeUpdate();
				
				System.out.println(row + "row(s) update.");
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		return "/WEB-INF/views/employee/addForm.jsp";
	}

}
