<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	body {
	 background-image: url("skiing.jpg");
 	 background-color: #black;
 	 background-size: cover;
     position: relative;
	 }
	 h1{
	 font-size: 60px;
	 }
	 
    </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<h1>Welcome to Skiing</h1>
<br>
<br>
<br>
<br>
  <a href="index.jsp">Back to the first page</a>
<br>
<br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>