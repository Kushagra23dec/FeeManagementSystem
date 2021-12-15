<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="com.fms.dto.FeeDto" %>
<%@ page import="java.util.List" %>
 
    
    <%
    
     List<FeeDto> fdto = (List<FeeDto>) session.getAttribute("getstudentdetail");    
    
      if(session.getAttribute("getstudentdetail") == null){
    	  response.sendRedirect("dashboard.jsp");
      }
     
    
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Details</title>
<link rel="stylesheet" href="assets/styles.css"/>
</head>
<body> 

<div class="container">
<h1>Student Details</h1> 
<div class="data">
<table  >
<thead>
<tr>
<th>RollNo</th>
<th>Student Name</th>
<th>Father Name</th>
<th>Student Phone</th>
<th>Father Phone</th>
<th>Total Fee</th>
<th>Paid Fee</th>
<th>Due Fee</th>
</tr>
</thead>
<tbody>
<%  try{ for(FeeDto fd : fdto) {  %>
<tr>

<td><%= fd.getRollno() %></td>
<td><%= fd.getsName() %></td>
<td><%= fd.getfName() %></td>
<td><%= fd.getsPno() %></td>
<td><%= fd.getfPno() %></td>
<td><%= fd.getTotalFee() %></td>
<td><%= fd.getPaidFee() %></td>
<td><%= fd.getDueFee() %></td>

</tr>

<% } } catch(Exception e) {  out.print("<center><h1> 404 Not found </h1></center>"); return;} %>
</tbody>
</table>
</div>
 <button class="login-btn space"><a href="dashboard.jsp">Dashboard</a></button> 
 <button class="login-btn space"><a href="logout.jsp">Logout</a></button>
</div>
</body>
</html>