<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*"%>
<%@include file="dbconnect.jsp"%>

<%
	stmt = myConn.createStatement();

	mySQL = "select * from board";

	myResultSet = stmt.executeQuery(mySQL);
	if (myResultSet.next()) {
		String subject = myResultSet.getString("subject");
		String contents = myResultSet.getString("contents");
%>

제목 :
<%=subject%>
<br>
내용 :
<%=contents%>

<%
	}
	stmt.close();
	myConn.close();
%>

