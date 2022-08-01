package jspboard.process;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jspboard.database.DBConnector;

public class DeleteProcess implements Process {
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		
		String sessionPass = (String)session.getAttribute("pass");
		String inputPass = request.getParameter("password");
		String sessionID = (String)session.getAttribute("id");
		String writer = request.getParameter("writer");
		Integer post_num = Integer.parseInt(request.getParameter("num"));
		
		String sql = "DELETE FROM post WHERE post_num = ?";
		
		if (sessionPass.equals(inputPass) && sessionID.equals(writer)) {
			
			try (
					Connection conn = DBConnector.getConnection();
					PreparedStatement pstmt = conn.prepareStatement(sql);	
				){
					pstmt.setInt(1, post_num);
					
					int row = pstmt.executeUpdate();
					
					System.out.println(row + "row(s) update.");
					
				} catch (SQLException e) {
					e.printStackTrace();
				}
			
			return "redirect:/JspBoard/jspboard/home";
			
		} else {
			return "redirect:/JspBoard/jspboard/read?num=" + post_num;
		}
		
	}

}
