
<%@page import="test02.memberdto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(request.getMethod().equals("POST")) {
		response.sendRedirect("joinform.jsp");
		return;
	}
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String date = request.getParameter("date");

	memberdto member = new memberdto();
	
	if(member == null || !member.getPassword().equals(password)) {

		request.setAttribute("msg", "아이디 또는 비밀번호가 맞지 않습니다.");
		request.setAttribute("id", id);
		request.getRequestDispatcher("main.jsp").forward(request, response);
		return;
	}
	
	session.setAttribute("sessionId", id);
	response.sendRedirect("joinform.jsp");
%>