package chap01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Gugudan2")
public class Gugudan2 extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		resp.setCharacterEncoding("EUC-KR");
		PrintWriter out = resp.getWriter();
		
		out.print("<html><head><title>멋진 구구단</title>");
		out.print("<meta charset=\"EUC-KR\">");
		out.print("<style>");
		out.print("table { background-color: black; color: white; }");
		out.print("th, td { border: solid white 3px; }");
		out.print("</style>");
		out.print("</head><body>");
		
		out.print("<table>");
		for (int gop = 0; gop <= 9; ++gop) {
			out.print("<tr>");
			for (int dan = 2; dan <= 9; ++dan) {
				if (gop == 0) {
					out.printf("<th>%d단</th>", dan);
				} else {	
					out.print(String.format("<td>%d x %d = %d</td>", dan, gop, dan  * gop));
				}				
			}
			out.print("</tr>");
		}
		out.print("</table>");
		
		out.print("</body></html>");
	}

}
