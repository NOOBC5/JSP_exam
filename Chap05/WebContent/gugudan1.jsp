<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 출력1</title>
</head>
<body>
	<h1>구구단 출력</h1>
	
	<table border = "1" bordercolor = "black">
		<tr>
			<th>2단</th>
			<th>3단</th>
			<th>4단</th>
			<th>5단</th>
			<th>6단</th>
			<th>7단</th>
			<th>8단</th>
			<th>9단</th>
		</tr>
		<%
			for(int i = 1; i <10; i++){
				out.print("<tr>");
				for(int j = 2; j < 10; j++){
					out.print("<td>"+j+" X "+i+" = "+i*j+"<br></td>");
				}
				out.print("</tr>");
			}
		%>
	</table>
</body>
</html>