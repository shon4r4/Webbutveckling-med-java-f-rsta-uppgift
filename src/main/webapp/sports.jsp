<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sports</title>
</head>
<body>
<%
   if (request.getParameter("sport").equals("foot-ball")) {
        response.sendRedirect("football.jsp");
        
    }else if (request.getParameter("sport").equals("hand-ball")) {
    	response.sendRedirect("handball.jsp");
    }else{
    	response.sendRedirect("skiing.jsp");
    }
    
    %>
</body>
</html>