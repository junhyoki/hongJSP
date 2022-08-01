package chap04.process;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap04.database.DBConnector;

public class EmployeeAddProcess implements Process {
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		Integer employee_id = Integer.parseInt(request.getParameter("employee_id"));
		String last_name 	= request.getParameter("last_name");
		String email 		= request.getParameter("email");
		String hire_date 	= request.getParameter("hire_date");
		String job_id		= request.getParameter("job_id");
		
		String sql = "INSERT INTO employees2(employee_id, last_name, email, hire_date, job_id)"
				+ " VALUES(?, ?, ?, ?, ?)";
				
		try (
			Connection conn = DBConnector.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
		) {
			pstmt.setInt(1, employee_id);
			pstmt.setString(2, last_name);
			pstmt.setString(3, email);
			
			// preparedStatement의 setDate는 java.sql.Date를 요구한다  (import: java.sql.Date)
			// java.sql.Date의 static method 중 valueOf에 html에서 받은 날짜 형식을 그대로 넘기면
			// java.sql.Date의 인스턴스를 반환한다.
			pstmt.setDate(4, Date.valueOf(hire_date));
			pstmt.setString(5, job_id);
			
			int row = pstmt.executeUpdate();
			System.out.println(row + "행이 추가되었습니다.");
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return "redirect:/chap04/employee/list";
	}

}
