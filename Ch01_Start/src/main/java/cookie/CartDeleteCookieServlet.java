package cookie;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CartDeleteCookieServlet")
public class CartDeleteCookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		Cookie[] cookie = request.getCookies();
		if(cookie != null) {
			for(int i=0; i<cookie.length; i++) {
				cookie[i].setMaxAge(0);
				response.addCookie(cookie[i]);
			}
		}else {
			out.println("<script>alert('삭제할 쿠키가 없습니다!')</script>");
		}
		out.print("<html><body>장바구니 비웠음!!<br>");
		out.print("<a href='cookie.html'>상품 선택 페이지</a><br>");
		out.print("</body></html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
