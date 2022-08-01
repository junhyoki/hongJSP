package jspboard.model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Post {
	
	private Integer post_num;
	private	String post_title;
	private String post_content;
	private String post_writer;
	
	public Post(Integer post_num, String post_title, String post_content, String post_writer) {
		this.post_num = post_num;
		this.post_title = post_title;
		this.post_content = post_content;
		this.post_writer = post_writer;
	}
	
	public Post(ResultSet rs) throws SQLException {
		this.post_num = rs.getInt("post_num");
		this.post_title = rs.getString("post_title");
		this.post_content = rs.getString("post_content");
		this.post_writer = rs.getString("post_writer");
	}

	public Integer getPost_num() {
		return post_num;
	}

	public void setPost_num(Integer post_num) {
		this.post_num = post_num;
	}

	public String getPost_title() {
		return post_title;
	}

	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}

	public String getPost_content() {
		return post_content;
	}

	public void setPost_content(String post_content) {
		this.post_content = post_content;
	}

	public String getPost_writer() {
		return post_writer;
	}

	public void setPost_writer(String post_writer) {
		this.post_writer = post_writer;
	}
}
