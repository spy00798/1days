<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li><a href="index.jsp?section=A">A</a></li>
		<li><a href="index.jsp?section=B">B</a></li>
		<li><a href="index.jsp?section=C">C</a></li>
	</ul>
	
	<%
	String section = request.getParameter("section") != null ? request.getParameter("section") : "";
	
	switch(section) {
	case "A":
	%><%@ include file = "pages/A.jsp" %>
	<%
	break;
	case "B":
		%><%@ include file = "pages/B.jsp" %>
		<%
		break;
	case "C":
		%><%@ include file = "pages/C.jsp" %>
		<%
		break;
		default:
			break;
	}
	
	%>
	<%@ include file="pages/Array.jsp" %>
</body>
</html>