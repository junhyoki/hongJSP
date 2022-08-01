package jspboard.process;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspboard.database.DBConnector;
import jspboard.model.Post;

public class HomeProcess implements Process {
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<Post> posts = new ArrayList<>();
		String sql = "SELECT * FROM post";
		
		try (
			Connection conn = DBConnector.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
		
		){
			while(rs.next()) {
				posts.add(new Post(rs));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
			
		request.setAttribute("posts", posts);
		
		try {
			request.setCharacterEncoding("EUC-KR");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return "/WEB-INF/views/home/index.jsp";
	}

}
