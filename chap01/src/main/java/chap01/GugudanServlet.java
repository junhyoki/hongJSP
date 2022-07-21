package chap01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/GugudanServlet")
public class GugudanServlet extends HttpServlet{
	
	/*
	 	/chap01/servlet/gugudan으로 접속하는 클라이언트에게 예쁜 구구단 표를 응답하는 서블릿을 만들어보세요
	*/
		
	@Override
	public void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		resp.setCharacterEncoding("EUC-KR");
		PrintWriter out = resp.getWriter();
		
		out.print("<html>");
		out.print("<head>");
		out.print("<title>Gugudan Table</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<table border=\"2\">");
		out.print("<tr style=\"font-size: 20px;\">");
		for (int i = 2; i <= 9; ++i) { 
			if (i % 2 == 0) {
				out.printf("<th style=\"background-color: yellow;\"> %d단 </th>", i);
			} else {
				out.printf("<th style=\"background-color: green;\"> %d단 </th>", i);
			}
		}
		out.print("/<tr>");
		
		for (int i = 1; i <= 9; ++i) {
			out.print("<tr style=\"padding: 2px;\">");
			for (int j = 2; j <= 9; ++j) {
				if (j % 2 == 0) {
					out.printf("<td style=\"background-color: lightyellow;\"> %d x %d = %d </td>", j, i, j * i);					
				} else {
					out.printf("<td style=\"background-color: lightgreen;\"> %d x %d = %d </td>", j, i, j * i);
				}
			}
			out.print("</tr>");
		}
		
		
		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
	}
}
