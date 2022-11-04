<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.MemberDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String name =request.getParameter("name");
    
    //MemberDTO m1 = new MemberDTO(id, pwd, name);
    //application.setAttribute("memberInfo", m1);

    application.setAttribute("requestMemberDTO", new MemberDTO());

    request.getRequestDispatcher("Login.jsp").forward(request,response);
%>
</body>
</html>