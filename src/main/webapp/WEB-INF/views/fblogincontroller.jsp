<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String user_name=(String)request.getParameter("user_name");
String user_email=(String)request.getParameter("user_email"); %>

<%=user_name %>
 <%=user_email %>

</body>
</html>