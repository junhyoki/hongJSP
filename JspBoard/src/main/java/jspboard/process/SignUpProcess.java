package jspboard.process;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspboard.database.DBConnector;


public class SignUpProcess implements Process {
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		String user_id 			= request.getParameter("user_id");
		String user_name 		= request.getParameter("user_name");
		String user_birth 		= request.getParameter("user_birth");
		String user_password 	= request.getParameter("user_password");
		
		String sql = "INSERT INTO board_user VALUES(?, ?, ?, ?)";
		
		try (
			Connection conn = DBConnector.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
		) {
			pstmt.setString(1, user_id);
			pstmt.setString(2, user_name);
			pstmt.setDate(3, Date.valueOf(user_birth));
			pstmt.setString(4, user_password);
			
			int row = pstmt.executeUpdate();
			System.out.println(row + "행이 추가되었습니다.");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return "redirect:/JspBoard/jspboard/home";
	}

}
