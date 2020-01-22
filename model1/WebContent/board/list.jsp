<%@page import="co.yedam.app.board.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="co.yedam.app.board.BoardDAO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
<head>
<title>게시판</title>
</head>

<body>
	<my:page></my:page>
	<my:boardType></my:boardType>
	<table width="80%" border=0>
		<tr>
			<td align="center">JDBC 게시판</td>
		</tr>
	</table>
	<br>
	<table width="80%" border=1 cellspacing=0>
		<tr height=30 bgcolor="#FFFF99">
			<th>번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>등록일</th>
			<th>조회</th>
		</tr>
		<%@ include file="dbconnect.jsp"%>
		<!-- 외부 소스파일 가져오기 -->

		<%--
			//mySQL = " select  no, subject, poster, lastpost, views " + "   from  board";

			//	myResultSet = stmt.executeQuery(mySQL); // select 

			//결과
		List<BoardDTO> list = (List<BoardDTO>) request.getAttribute("list");
			for (BoardDTO dto : list) {
		--%>
		<c:forEach items="${list}" var="dto">
			<tr height=28 align=center>
				<td>${dto.getNo()}</td>
				<td><a href=view.jsp>${dto.getNo()}${dto.getSubject()}</a></td>
				<td>${dto.getPoster()}</td>
				<td>${dto.getLastpost()}</td>
				<td>${dto.getViews()}</td>
			</tr>
		</c:forEach>
		<c:if test="${empty list}">
			<tr>
				<td colspan="5">no data</td>
			</tr>
		</c:if>
		<%--
			/*	out.print("<tr height=28 align=center>");
								out.print("<td>"+no+"</td>");
								out.print("<td><a href=view.jsp?c_no="+no+">"+subject+"</a></td>");
								out.print("<td>"+poster+"</td>");
								out.print("<td>"+lastpost+"</td>");
								out.print("<td>"+views+"</td></tr>"); */
			}
			stmt.close();
			myConn.close();
		--%>
	</table>
	<table width="80%" border=0>
		<tr>
			<td align="right"><a href="boardCreateForm"> 글쓰기</a></td>
		</tr>
	</table>
	<%=application.getRealPath("/")%><br> 서버 경로 -->
	<%=request.getHeader("User-Agent")%><br>
	<%=request.getContextPath()%><br>
	<!-- /model1 -->
	<img src="<%=request.getContextPath()%>/img/a.jpg" />


</body>
</html>