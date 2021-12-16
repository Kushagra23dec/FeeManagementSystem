<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
 <%@ page import="java.util.List" %>
 <%@ page import="java.util.ArrayList" %>

<%

//List<String> us = (List<String>) session.getAttribute("userd");

//if(us.isEmpty() == true){
	
//}
//response.sendRedirect("index.jsp");

List<String> us = null;
try{
	if(session.getAttribute("userd") == null){
		response.sendRedirect("index.jsp?LoginFirst");
	}
	us = (List<String>) session.getAttribute("userd");
	
}catch(Exception e){
	response.sendRedirect("index.jsp?Exception");
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

<% try{
	//out.print("hello: "+ request.getParameter("k") + " Name: " + us.get(1) 	);	
	
}catch(Exception e){
	response.sendRedirect("index.jsp?FromException");
}
 %>
<button class="login-btn space"><a href="logout.jsp">Logout</a></button>
 <button class="login-btn space"><a href="student.jsp">Student Search</a></button> 

</body>
</html>