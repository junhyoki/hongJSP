package jspboard.process;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jspboard.database.DBConnector;
import jspboard.model.Post;

public class ModifyFormProcess implements Process {
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		Post post = null;
		
		HttpSession session = request.getSession();
		
		String sessionPass = (String)session.getAttribute("pass");
		String inputPass = request.getParameter("password");
		String sessionID = (String)session.getAttribute("id");
		String writer = request.getParameter("writer");
		Integer post_num = Integer.parseInt(request.getParameter("num"));
		
		String sql = "SELECT * FROM post WHERE post_num = ?";
		
		if (sessionPass.equals(inputPass) && sessionID.equals(writer)) {
			
			try (
					Connection conn = DBConnector.getConnection();
					PreparedStatement pstmt = conn.prepareStatement(sql);
					) {
						pstmt.setInt(1, post_num);
						ResultSet rs = pstmt.executeQuery();
						rs.next();
						post = new Post(rs);
						
					} catch (SQLException e) {
						e.printStackTrace();
					}
			request.setAttribute("post", post);
			return "/WEB-INF/views/post/modifyForm.jsp";
			
		} else {
			return "redirect:/JspBoard/jspboard/read?num=" + post_num;
		}
		
	}

}
