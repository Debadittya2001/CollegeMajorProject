<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import ="project.ConnectionProvider" %>
<%@include file="/header.jsp"  %>

<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body>
<%
int z=0;
try{
	String search=request.getParameter("search");
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from booklist where Bname like '%"+search+"%' Author like '%"+search+"%' and status='Available'");
	while(rs.next())
	{
		z=1;
		
%>
<%	} 
	}
catch(Exception e)
{
System.out.println(e);

}%>
    <div>
        <input class="book-search" name ="search" placeholder="write here..." type="text">
        <button type="button" class="btn btn-dark">Search</button>
    </div>
    <div>
        <a href="./book details.jsp"><button type="button" class="btn btn-info" >book details</button></a>
    </div>



    <div>
        <table>
            <ol>
               <li>
                   Book name 1
               </li>
               <li>
                   Book name 2
               </li>
            </ol>
        </table>
    </div>
</body>
</html>
