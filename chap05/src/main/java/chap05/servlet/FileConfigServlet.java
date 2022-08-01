package chap05.servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FileConfigServlet extends HttpServlet {

	// JSP 웹 프로젝트로 File을 다룰 때는 getRealPath()를 사용해야 한다.
	// forward 등 JSP 관련 메서드 사용시에는 webapp경로를 사용하지만
	// 자바 관련 클래스 사용시에는 실제 경로를 사용해야 한다
	
	Map<String, String> servletFileConfig = new HashMap<>();  
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		String servletConfigPath = config.getInitParameter("servlet-config");
				
		File root = new File(config.getServletContext().getRealPath("/"));
		File servletConfigFile = new File(root, servletConfigPath);
		
		try (
			FileReader fin = new FileReader(servletConfigFile);
			BufferedReader in = new BufferedReader(fin);
		) {
			String line = null;
			while ((line = in.readLine()) != null) { 
				String[] keyAndValue = line.split("=");				
				servletFileConfig.put(keyAndValue[0], keyAndValue[1]);
			}			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(servletFileConfig);
		System.out.println(servletFileConfig.get("user"));
		System.out.println(servletFileConfig.get("password"));
		System.out.println(servletFileConfig.get("resource"));
	}
	
}
