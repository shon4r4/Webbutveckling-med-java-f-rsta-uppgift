<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
     
   Cookie firstName = new Cookie("first_name", request.getParameter("first_name"));
   Cookie lastName = new Cookie("last_name", request.getParameter("last_name"));
   
   firstName.setMaxAge(60*60*12); 
   lastName.setMaxAge(60*60*12); 
   response.addCookie( firstName );
   response.addCookie( lastName );
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Returned Info</title>
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
<br>
<br>
<h1>Gathered Info</h1>
<br>
<br>

  <p>First Name:
  <%= request.getParameter("first_name")%>
  </p>
  <br>
  <p>Last Name:
  <%= request.getParameter("last_name")%>
  </p>
  <br>
  <p>Age:
  <%= request.getParameter("age")%>
  </p>
  <br>
  <p>Profession:
  <%= request.getParameter("profession")%>
  </p>
  <br>
  <p>Email:
  <%= request.getParameter("email")%>
  </p>
  
   <%
         Cookie cookie = null;
         Cookie[] cookies = null;
         
         cookies = request.getCookies();
         
         if( cookies != null ) {
            out.println("<h3>Cookies found:</h3>");
            
            for (int i = 0; i < cookies.length; i++) {
               cookie = cookies[i];
               out.print("Name : " + cookie.getName( ) + ",  ");
               out.print("Value: " + cookie.getValue( )+" <br/>");
            }
         } else {
            out.println("<h2>No cookies founds</h2>");
         }
      %>
 
  <br><br>
  <a href="index.jsp">Back to the first page</a>
  <br>
  <br>
  <br>
  <br>
  <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>