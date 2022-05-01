<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import ="project.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div class='newbook'>
		<%
		String MailID=session.getAttribute("MailID").toString();
		%>
		<center><h1>Library Inventory Management</h1></center>
		
		<a href="addnewbook.jsp">Add New Book<i class='fas fa-plus-square'></i></a>
		
		<a href="AllBooks.jsp">All Books & Edit Books<i class='fas fa-plus-square'></i></a>
		
		<a href="../logout.jsp">Logout</a>
		
	
	</div>
</body>
</html>