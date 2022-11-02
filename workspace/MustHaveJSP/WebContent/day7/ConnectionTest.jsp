<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "common.JDBConnect" %>
<%@ page import = "common.DBConnPool" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC 테스트</title>
</head>
<body>
	
	<%

	JDBConnect jdbc1= new JDBConnect(application);
	jdbc1.close();
	
	%>
	<h2>커넥션 풀 테스트</h2>
	<%
	DBConnPool pool = new DBConnPool();
	pool.close();
	%>
	
</body>
</html>