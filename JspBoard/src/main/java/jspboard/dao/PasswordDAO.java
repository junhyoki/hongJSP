package jspboard.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jspboard.database.DBConnector;

public class PasswordDAO {
	
	public static String getPassword(String user_id) {
		
		String user_password = null;
		String sql = "SELECT user_password FROM board_user WHERE user_id = ?";
		
		try (
			Connection conn = DBConnector.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
		) {
			pstmt.setString(1, user_id);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			user_password = rs.getString("user_password");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return user_password;
	}

}
