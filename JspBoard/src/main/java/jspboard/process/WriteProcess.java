package jspboard.process;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jspboard.database.DBConnector;

public class WriteProcess implements Process {
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			request.setCharacterEncoding("EUC-KR");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		
		HttpSession session = request.getSession();
		
		String post_title 	= request.getParameter("title");
		String post_content = request.getParameter("content");
		String post_writer 	= (String)session.getAttribute("id"); 
		
		
		String sql = "INSERT INTO post VALUES(post_num_sq.nextval, ?, ?, ?)";
		
		try (
			Connection conn = DBConnector.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
		) {
			pstmt.setString(1, post_title);
			pstmt.setString(2, post_content);
			pstmt.setString(3, post_writer);
			
			int row = pstmt.executeUpdate();
			System.out.println(row + "행이 추가되었습니다.");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return "redirect:/JspBoard/jspboard/home";
	}

}
