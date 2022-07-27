package chap04.process;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap04.database.DBConnector;

public class EmployeeRemoveProcess implements Process {
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		String sql = "DELETE FROM employees2 WHERE employee_id = ?";
		
		try (
				Connection conn = DBConnector.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);	
			){
				pstmt.setInt(1, Integer.parseInt(request.getParameter("employee_id")));
				
				int row = pstmt.executeUpdate();
				
				System.out.println(row + "row(s) update.");
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		
		
		return "redirect:/chap04/employee/list";
	}

}
