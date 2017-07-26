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
<p>수정할 내용을 적으세요.</p><br/>
<form method = "post" action = "/gb/gs">
	<input type = "hidden" name = "no" value = "<%=no%>">
	<input type ="hidden" name = "a" value = "update">
		<table border=1 width=500>
			<tr>
				<td>이름</td><td><input type ="text" name ="name"></td>
				<td>비밀번호</td><td><input type = "password" name="pass"></td>
			</tr>
			<tr>
				<td colspan ="4"><textarea name ="content" cols ="60" rows=5></textarea></td>
			</tr>
			<tr>
				<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
			</tr>
		</table>
		<a href = "/gb/gs">메인으로 돌아가기</a>
</form>
</body>
</html>