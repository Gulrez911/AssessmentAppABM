<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>Welcome ${email} Your name is ${name}
      <%
      String name=(String)request.getParameter("name");
      String email=(String)request.getParameter("email");
       %>

     <%=name %><br>

     <%=email %>
</body>
</html>