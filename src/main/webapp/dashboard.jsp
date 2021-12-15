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
	us = (List<String>) session.getAttribute("userd");
}catch(Exception e){
	response.sendRedirect("index.jsp");
}
%>






<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<% try{
	out.print("hello: "+ request.getParameter("k") + " Name: " + us.get(1) 	);	
	
}catch(Exception e){
	response.sendRedirect("index.jsp?FromException");
}
 %>
<h3><a href="logout.jsp">Logout</a></h3>
<label>See Student Details: </label> <button><a href="student.jsp">Student Search</a></button> 
</center>
</body>
</html>