<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	if(session.getAttribute("UserId") == null) {
	%>
	<h2>회원가입</h2>
	<form action="RegisterAction.jsp" method="post">
	아이디 : <input type="text" name="user_id"><br />
	비밀번호 : <input type="password" name="user_pw"><br />
	닉네임 : <input type="text" name="user_name"><br />
	<input type="submit" name="제출">
	</form>
	<% }
	else { %>
	<%=session.getAttribute("UserName") %> 회원님, 로그인하셨습니다. <br />
	<%
	}
	%>
</body>
</html>