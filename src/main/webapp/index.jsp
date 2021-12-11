<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>My index page</title>
<style type="text/css">
	body {
	 background-image: url("bg.jpg");
 	 background-color: #black;
 	 background-size: cover;
     position: relative;
	 }
	 h1{
	 font-size: 60px
	 }
	 
    </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<h1>Welcome</h1>
<br>
<br>
<br>
<div>
	<form method="GET" action="returnedinfo.jsp">
		Name: <input type="text" name="first_name">
		<br>
		<br>
		Last Name: <input type="text" name="last_name">
		<br>
		<br>
	  	Age: <input type="text" name="age">
	  	<br>
	  	<br>
		Profession: <input type="text" name="profession">
		<br>
		<br>
		E-mail: <input type="text" name="email">
		<br>
		<br>
		<input type="submit" value="Enter">
	</form>
</div>
<br>
<br>
<h2>What sport do you like</h2>
<br>
<div>
<form action="sports.jsp">
	<select name="sport">
	<option value="foot-ball">Football</option>
	<option value="hand-ball">Handball</option>
	<option value="skiing">Skiing</option>
	</select>
	<input type="submit" value="Enter"/>
</form>
</div>
<br>
<br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>