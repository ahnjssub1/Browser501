<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request 내장객체 예제</title>
</head>
<body>
<%
 String id = request.getParameter("id");
 String name = request.getParameter("name");
 String grade = request.getParameter("grade");
 String subject = request.getParameter("subject");

%>
<%
try{
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:orcl";
	Class.forName(driver);
	Connection con=DriverManager.getConnection(url,	"jsp", "jsp");
	Statement stmt=con.createStatement();
	String sql= "insert into stu values('"+id+"', '"+name+"', '"+grade+"', '"+subject+"')";
	stmt.executeUpdate(sql);
	con.close();
	stmt.close();
}catch(Exception e){
	System.out.println(e.getMessage());
}
%>
</body>
</html>