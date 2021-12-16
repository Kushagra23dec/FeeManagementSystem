<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login_Page</title>
<link rel="stylesheet" href="assets/styles.css"/>
</head>

<body>

<div class="container">
<h1>Login Page</h1>
 
<form  class="form" action="Validation" method="post">

<input type="text" placeholder="UserName" name="user"  required> 
<input type="password" placeholder="Password" name="pass"  required> 
<input class="login-btn" type="submit" value="Login">
</form>
</div>




</body>
</html>