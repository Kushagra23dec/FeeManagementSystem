<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    	
    if(session.getAttribute("userd") == null){
    	return;
    }
    
    
    
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/styles.css"/>
</head>
<body>

<div class="container">

<form  class="form" action="GetStudentDetails" method="post">
<input type="text" placeholder="Full Name" name="fullname"  required> 
<input type="text" placeholder="Roll No" name="rollno"  required> 
<input class="login-btn" type="submit" value="search">
</form>

</div>

</body>
</html>