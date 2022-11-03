<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="common.JDBConnect" %>
<%@ page import="java.sql.Statement" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 처리</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	
	JDBConnect jdbc = new JDBConnect();
	
	String sql = "INSERT INTO member VALUES (?, ?, ?, sysdate)";
	PreparedStatement psmt = jdbc.conn.prepareStatement(sql);
	psmt.setString(1, id);
	psmt.setString(2, pw);
	psmt.setString(3, name);
	
	//ver1 한번 실행하고 캐쉬에 담아서 재사용
 	String sql1 = "SELECT id FROM member WHERE id=?";
	PreparedStatement ps = jdbc.conn.prepareStatement(sql1);
	ps.setString(1, id);
	ResultSet r = ps.executeQuery();
	
	if(r.next()){
		jdbc.close();
	    request.getRequestDispatcher("Register.jsp?LoginErr=1")
        .forward(request,response);
	}
	else{
		int result = psmt.executeUpdate();
		
		System.out.println(result + "행이 DB에 입력되었습니다.");
		
		session.setAttribute("user_name", name);
		response.sendRedirect("Welcome.jsp");
		jdbc.close();
	}
	
	//ver2 계속 실행
	//String spl2 = "SELECT id FROM member WHERE id=" + id;
	//Statement st = jdbc.conn.createStatement();
	//st.executeQuery(spl2);
	
	// ver1.
	
	//ver2.
	//String sql4 = "INSERT INTO member VALUES(" + id + "," + pw + "," + name + ", sysdate)";
	//Statement stmt = jdbc.conn.createStatement();
	//stmt.executeUpdate(sql4);
	
	%>
</body>
</html>