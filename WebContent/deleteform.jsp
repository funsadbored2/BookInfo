<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 

	int no = Integer.parseInt(request.getParameter("no"));

%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="/gb/gs">
	<input type="hidden" name="no" value="<%=no%>">
	<input type ="hidden" name = "a" value="delete">
	<table border = 1 width = 500>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="password"></td>
			<td><input type="submit" value="확인"></td>
			<td><a href="/gb/gs">메인으로 돌아가기</a></td>
		</tr>
	</table>
	</form>
</body>
</html>
