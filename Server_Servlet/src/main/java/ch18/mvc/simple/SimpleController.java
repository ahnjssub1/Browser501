package ch18.mvc.simple;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//525
//URL Servlet Mapping방법1- Annotation
@WebServlet("/ch18/simple")
public class SimpleController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		//2단계 요청 파악
		//request 객체로부터 사용자의 요청을 파악하는 코드
		String type=request.getParameter("type");
		
		//3단계 요청한 기능을 수행
		Object resultObject=null;

		if(type == null || type.equals("greeting")) {
			resultObject = "안녕하세요";
		}else if(type.equals("date")){
			resultObject = new Date();
		}else {
			resultObject = "Invalid Type";
		}
		
		//4단계 request나 session에 처리 결과를 저장
		request.setAttribute("result", resultObject);
		
		//5단계 RequestDispatcher를 사용하여 알맞는 뷰로 포워딩
		RequestDispatcher dispatcher = request.getRequestDispatcher("simpleView.jsp");
		dispatcher.forward(request, response);
	}
}
