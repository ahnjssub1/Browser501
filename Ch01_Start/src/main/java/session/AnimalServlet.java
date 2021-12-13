package session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

@WebServlet("/ch10_session/study10/AnimalServlet")
public class AnimalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String food = request.getParameter("Food");
		HttpSession session = request.getSession();
		session.setAttribute("f", food);
		
		out.print("<html><head><title>성격테스트</title></head><body><h3>좋아하는 동물은?</h3>");
		out.print("<form action='result'>");
		out.print("<input type='text' name='animal'>");
		out.print("<input type='submit' value='확인'>");
		out.print("</form></body></html>");	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
