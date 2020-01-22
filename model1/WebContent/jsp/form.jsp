<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="elTest.jsp">
<input type="text" name="name" value="tang">
<input type="checkbox" name="hobby" value="eat">먹방
<input type="checkbox" name="hobby" value="ski">스키
<input type="checkbox" name="hobby" value="eski">이스키
<button>등록</button>
</form>
<%
	//쿠키 저장
	Cookie cookie = new Cookie("openYn", "yes"); // 쿠키이름
	cookie.setMaxAge(60*2); //시간 
	cookie.setPath("/");
	response.addCookie(cookie);
%>
</body>
</html>