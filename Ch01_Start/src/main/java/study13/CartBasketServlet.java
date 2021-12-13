package study13;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ch10_session/study13/CartBasketServlet")
public class CartBasketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		out.print("<html><body>장바구니 리스트: ");
		HttpSession session = request.getSession();
		String product = (String) session.getAttribute("product");
		out.println("["+product+"]<br>");
		out.println("<a href='product.html'>상품 선택 페이지</a><br>");
		out.println("<a href='CartDeleteServlet'>장바구니 비우기</a><br>");
		out.println("</body></html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
