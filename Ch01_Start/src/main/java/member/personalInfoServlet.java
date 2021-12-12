package member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/pinfo")
public class personalInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		personalInfo obj = new personalInfo();
		obj.setName("홍길동");
		obj.setGender('남');
		obj.setAge(24);

		request.setAttribute("pinfo", obj); //request영역에 주소값 줘서 저장....
							//"pinfo"-> 이름은 내가 정하는 것 

		RequestDispatcher d = request.getRequestDispatcher("/customerInfoViewer.jsp");
		d.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
