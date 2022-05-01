<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String MailID=session.getAttribute("MailID").toString();
%>
	<center><h2>Library Management System</h2></center>
	<h2><a href=""><%out.println(MailID); %></a></h2>
	<a href="home.jsp">Home</a>
	<a href="book search.jsp"><button>book search</button></a>
	<a href="">My Cart</a>
	<a href="">My Order</a>
	<a href="">About</a>
	<a href="logout.jsp">Logout</a>
	
</body>
</html>