package jspboard.process;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jspboard.database.DBConnector;

public class ModifyProcess implements Process {
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			request.setCharacterEncoding("EUC-KR");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		
		HttpSession session = request.getSession();
		
		String post_title = request.getParameter("title");
		String post_content = request.getParameter("content");
		String post_writer = (String)session.getAttribute("id");
		Integer post_num = Integer.parseInt(request.getParameter("num"));
		
		String sql = "UPDATE post SET post_title = ?, post_content = ? WHERE post_num = ?";
		
		try (
				Connection conn = DBConnector.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);	
			){
				pstmt.setString(1, post_title);
				pstmt.setString(2, post_content);
				pstmt.setInt(3, post_num);
					
				int row = pstmt.executeUpdate();
				
				System.out.println(row + "row(s) update.");
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		
		return "redirect:/JspBoard/jspboard/home";
	}

}
