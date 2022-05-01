<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import ="project.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
	<div id='container'>
		<div class='Register'>
			<form action="" method="post">
				<input type ="text" name= "Name" placeholder= "Enter your Name" required>
				<input type ="text" name="MailID" placeholder= "Enetr your Mail_id" required>
				<input type ="password" name="Password" placeholder="Enter Password" required>
				<button type ="button">Register</button>
			</form>
		</div>
		<div class='whyreg'>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h1>Successfully Registered !</h1>
<%} %>
<% 
if("invalid".equals(msg))
{
%>
<h1>Try Again! Something Went Wrong!</h1>
<% } %>




		</div>
	</div>
</body>
</html>