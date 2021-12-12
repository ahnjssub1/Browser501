<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");		
	
	RequestDispatcher d = null;
	
	String id = request.getParameter("id");
	String account = request.getParameter("account");
		
	session.setAttribute("id", id);
	session.setAttribute("account", account);
	
	if(account.equals("manager")){
		d = request.getRequestDispatcher("ManagerMain.jsp");
		d.forward(request, response);
	}
	else if(account.equals("user")){
		d = request.getRequestDispatcher("userMain.jsp");
		d.forward(request, response);
	}
	else{
		
		out.println("<script>alert('입력사항을 확인하고 재입력해주세요')</script>");
		out.println("<script>history.back()</script>");
	}	
%>