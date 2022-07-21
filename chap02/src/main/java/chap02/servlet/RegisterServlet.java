package chap02.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/form/register")
public class RegisterServlet extends HttpServlet{
	
	// doGet : 해당 서블릿으로 GET방식 요청이 도착했을 때 처리되는 곳
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("Get방식 요청이 도착했습니다!!");
		
		System.out.println("사용자가 보낸 데이터1 (Get): " + req.getParameter("name"));
		System.out.println("사용자가 보낸 데이터2 (Get): " + req.getParameter("age"));
		System.out.println("사용자가 보낸 데이터3 (Get): " + req.getParameter("bloodtype"));
	}
	
	// doPost : 해당 서블릿으로 POST방식 요청이 도착했을 때 처리되는 곳
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		System.out.println("Post방식 요청이 도착했습니다!!");
		
		// checkbox등으로 하나의 파라미터에 여러 값이 오는 경우 getParameterValues()를 사용해야 한다
		System.out.println("취미를 getParameter()로 받기: " + req.getParameter("hobby"));
		System.out.println("getParameterValues(): " + 
				Arrays.toString(req.getParameterValues("hobby")));
		
		int sum = Integer.parseInt(req.getParameter("adult"))*45000 + Integer.parseInt(req.getParameter("teen"))*38000 + Integer.parseInt(req.getParameter("child/senior"))*35000
				 + Integer.parseInt(req.getParameter("adultN"))*36000 + Integer.parseInt(req.getParameter("teenN"))*33000 + Integer.parseInt(req.getParameter("child/seniorN"))*31000;
		
		System.out.printf("주간권 [대인: %s명 / 청소년: %s명 / 노약자: %s명] \n", req.getParameter("adult"),req.getParameter("teen"), req.getParameter("child/senior"));
		System.out.printf("야간권 [대인: %s명 / 청소년: %s명 / 노약자: %s명] \n", req.getParameter("adultN"),req.getParameter("teenN"), req.getParameter("child/seniorN"));
		System.out.printf("총 요금: %d원", sum);
		
		resp.setCharacterEncoding("EUC-KR");
		PrintWriter out = resp.getWriter();
		
		out.print("<html><head><title>영수증</title>");
		out.print("<meta charset=\"EUC-KR\">");
		out.print("<style>");
		out.print("table { background-color: black; color: white; }");
		out.print("th, td { border: solid white 3px; width: 80px; text-align: center}");
		out.print("</style>");
		out.print("</head><body>");
		
		out.print("<table>");
		out.print("<tr>");
		out.print("<th> 종류 </th>");
		out.print("<th> 대인 </th>");
		out.print("<th> 청소년 </th>");
		out.print("<th> 소인/경로 </th>");
		out.print("</tr>");
		out.print("<tr>");
		out.print("<td> 주간권 </td>");
		out.print("<td>" + req.getParameter("adult") + "</td>");
		out.print("<td>" + req.getParameter("teen") + "</td>");
		out.print("<td>" + req.getParameter("child/senior") + "</td>");
		out.print("</tr>");
		out.print("<tr>");
		out.print("<td> 야간권 </td>");
		out.print("<td>" + req.getParameter("adultN") + "</td>");
		out.print("<td>" + req.getParameter("teenN") + "</td>");
		out.print("<td>" + req.getParameter("child/seniorN") + "</td>");
		out.print("</tr>");
		out.print("<tr>");
		out.print("<th colspan=\"4\"> 총 요금 : " + sum + "원</th>");
		out.print("</tr>");
		out.print("</table>");
		
		out.print("</body></html>");
	}
	
	// service : 요청 방식과 관계 없이 처리되는 곳
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		System.out.println("Service가 처리되었습니다!");
		
		System.out.println("사용자가 보낸 데이터1 (Service): " + req.getParameter("name"));
		System.out.println("사용자가 보낸 데이터2 (Service): " + req.getParameter("age"));
		
		// 부모 클래스의 service가 원래 하던 일 : service 처리 후 알맞은 처리 메서드로 보내는 일
		super.service(req, resp);
	}
	
}