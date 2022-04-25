<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import ="project.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<link rel="stylesheet" href="style2.css">

</head>
<body>
    <div id='container'>
        <div class='Register'>
            <form class="reg_form" action="Reg_Action.jsp" method="post">
                <input type ="text" class="input_field" name= "Name" placeholder= "Enter your Name" >
                <input type ="text" class="input_field" name="MailID" placeholder= "Enter your Mail_id" >
                <input type ="password" class="input_field" name="Password" placeholder="Enter Password" >
                <button type ="submit" class="reg_button btn btn-success">Register</button>
            </form>
        </div>
        <div class='whyreg'>
<!-- <%
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
<% } %> -->




        </div>
    </div>
</body>
</html>