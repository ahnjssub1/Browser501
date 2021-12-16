package lms11;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/")
public class LoginServlet extends HttpServlet {
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String url = "login.jsp";
	        String id = request.getParameter("id");
	        String pw = request.getParameter("pw");
	        
	        MemberDAO dao = MemberDAO.getInstance();
	        
	        int result = dao.userCheck(id, pw);
	        if(result == 1){
	        	MemberDTO dto = new MemberDTO();
	        	HttpSession session = request.getSession();
	            session.setAttribute("loginUser", dto);
	            
	            request.setAttribute("message", "로그인을 성공했습니다.");
	            url = "main.jsp";
	        }else if(result == 0){
	            request.setAttribute("message", "비밀번호가 틀렸습니다.");
	            url = "loginForm.jsp";            
	        }else if(result == -1){
	            request.setAttribute("message", "아이디가 존재하지 않습니다.");
	            url = "loginForm.jsp";
	        }
	        System.out.println(url);
	        request.getRequestDispatcher(url).forward(request, response);
	    }

}
