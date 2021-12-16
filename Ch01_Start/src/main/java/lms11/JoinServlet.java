package lms11;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/join.do")
public class JoinServlet extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
        request.getRequestDispatcher("member/join.jsp").forward(request, response);    
    }
   .
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        
        String name = request.getParameter("name");
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        String address = request.getParameter("address");
        String tel = request.getParameter("tel");
        Date reg_date = request.getParameter("reg_date");
        
        MemberDTO dto = new MemberDTO();
        dto.setName(name);
        dto.setId(id);
        dto.setPw(pw);
        dto.setAddress(address);
        dto.setTel(tel);
        dto.setReg_date(reg_date);
        
        MemberDAO dao = MemberDAO.getInstance();
        int result = dao.insertMember(dto);
        
        HttpSession session = request.getSession();
        if(result == 0){
            request.setAttribute("message", "비밀번호가 틀렸습니다.");
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/login.jsp");

        } else if(result == -1){
        	request.setAttribute("message", "아이디가 존재하지 않습니다.");
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/login.jsp");
        } else {
            request.setAttribute("message", "로그인을 성공했습니다.");
            session.setAttribute("id", dto.getId());
            RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/login.jsp");
            
        }
                
    }
 
}