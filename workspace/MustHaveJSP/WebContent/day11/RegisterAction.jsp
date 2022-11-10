<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
	String userId = request.getParameter("user_id");
	String userName = request.getParameter("user_name");
	
	session.setAttribute("UserId", userId);
	session.setAttribute("UserName", userName);
	response.sendRedirect("RegisterForm.jsp");
	%>