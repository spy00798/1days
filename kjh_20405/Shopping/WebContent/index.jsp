<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="static/header.jsp" %>
	<%@ include file="static/nav.jsp" %>
	
	<%
		String section = request.getParameter("section") != null ? request.getParameter("section") : "";
		
		switch(section) {
		case "sale_registration":
			%><%@ include file="page/sale_registration.jsp" %> <%
			break;
		case "sale_lookup":
			%><%@ include file="page/sale_lookup.jsp" %> <%
			break;
		case "sale_lookup_by_product":
			%><%@ include file="page/sale_lookup_by_product.jsp" %> <%
			break;
		case "sale_lookup_by_category":
			%><%@ include file="page/sale_lookup_by_category.jsp" %> <%
			break;
		}
	%>
	
	<%@ include file="static/footer.jsp" %>
</body>
</html>