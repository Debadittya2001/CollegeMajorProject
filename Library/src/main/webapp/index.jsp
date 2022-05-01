<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import ="project.ConnectionProvider" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="stylesheet" href="style.css">

    <title>Document</title>
</head>
<body>

    <header class="header">
        <h1>Library Management System</h1>
    </header>
    <form action = "Login_Action.jsp"  method ="post">
    	<div class="nav">

        <div class="UA">
            <button class="btn btn-success" name="btn">User</button>
            <button class="btn btn-danger" name="btn">Admin</button>
        </div>
    
        <div class="idpass">
            <input name="MailID" placeholder="MailID" type="email" required>
        </div>
    
        <div>
            <input name="Password" placeholder="Password" type="password" required>
        </div>
        <div class='whylogin'>
    	<%
        String msg=request.getParameter("msg");
        if("notexist".equals(msg))
        {
        %>
        <h1>Incorrect MailID or Password</h1>
        <%}%>
        <%if("invalid".equals(msg))
          {%>
        <h1>Something Went Wrong! Try Again!</h1>
        <%} %>
        </div>
    
        <div class="reglog">
            <button class="btn btn-dark" ><a href="Register.jsp">Register</a></button>
            <button class="btn btn-primary">Log in</button>
        </div>

    </div>
    </form>	
    
</body>
</html>