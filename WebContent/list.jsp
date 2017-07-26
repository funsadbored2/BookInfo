<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.dao.GuestbookDao" %>
<%@ page import = "com.javaex.vo.GuestbookVo" %>
<%@ page import = "java.util.List" %>

<% 

 List<GuestbookVo> list = (List<GuestbookVo>)request.getAttribute("list");

%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="/gb/gs" method="post">
	<table border=1 width=500>
		<tr>
			<td>이름</td><td><input type="text" name="name"></td>
			<td>비밀번호</td><td><input type="password" name="pass"></td>
		</tr>
		<tr>
			<td colspan=4><textarea name="content" cols=60 rows=5></textarea></td>
		</tr>
		<tr>
			<td colspan=4 align=right><input type="submit" VALUE=" 확인 ">
			<input type ="hidden" name = "a" value = "add"></td>
		</tr>
	</table>
	</form>
	<br/>

	
	
<% 
	for(GuestbookVo v:list){
%>
	<table width=510 border=1>
		<tr>
			<td>[<%=v.getNo()%>]</td>
			<td><%=v.getName()%></td>
			<td><%=v.getRegDate()%></td>
			<td><a href="/gb/gs?a=deleteform&no=<%=v.getNo()%>">삭제</a></td>
			<td><a href ="/gb/gs?a=updateform&no=<%=v.getNo()%>">수정</a></td>
		</tr>
		<tr>
			<td colspan=5><%=v.getContent()%></td>
		</tr>
	</table>
	 <br/>
<% } %>
</body>
</html>