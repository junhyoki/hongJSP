package chap04.process;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap04.database.DBConnector;

public class EmployeeModifyProcess1 implements Process {
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		String sql = "UPDATE employees2 SET first_name = ?, last_name = ?, email = ?, phone_number = ?, salary = ? WHERE employee_id = ?";
		
		try (
				Connection conn = DBConnector.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);	
			){
				pstmt.setString(1, request.getParameter("first_name"));
				pstmt.setString(2, request.getParameter("last_name"));
				pstmt.setString(3, request.getParameter("email"));
				pstmt.setString(4, request.getParameter("phone_number"));
				pstmt.setInt(5, Integer.parseInt(request.getParameter("salary")));
				pstmt.setInt(6, Integer.parseInt(request.getParameter("employee_id")));
					
				int row = pstmt.executeUpdate();
				
				System.out.println(row + "row(s) update.");
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		
		return "redirect:/chap04/employee/list";
	}

}
