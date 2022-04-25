<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import ="project.ConnectionProvider" %>
<%@include file="adminHeader.jsp"  %>

<!DOCTYPE html>
<html>
<head>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("Done".equals(msg))
{%>
<h3 class="alert">Product Added Successfully!</h3>
<%} %>
<%
if("Wrong".equals(msg))
{%>
<h3 class="alert">Something Went Wrong! Try Again!</h3>
<%} %>
<%
int BID=0;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select max(BID) from booklist");
	while(rs.next())
	{
		BID=rs.getInt(1);
		BID=BID+1;
	}
	System.out.println(BID);
}
catch(Exception e)
{}
%>
<form action="addnewbook_Action.jsp" method="post">
<h3>BookID: <% out.println(BID); %></h3>
<input type="hidden" name="id" value="<% out.println(BID); %>">

<div class="left-div">
	<h3>Enter Book Name</h3>
	<input type="text" name="Bname" placeholder="Enter the Book Name" required>
<hr>	
</div>

<div class="right-div">
	<h3>Enter price</h3>
	<input type="number" name="price" placeholder="Enter Book Price" required>
<hr>
</div>
<div class="left-div">
	<h3>Status</h3>
	<select  name="Status">
	<option value="Available">Available</option>
	 <option value="Not_Available">Not_Available</option>
	</select>
	<!-- <input type="radio" id="on" name="on" value="Available">
	<lable for="on">Available</lable>
	<input type="radio" name="off" value="Not_Available">
	<lable for="off">Not_Available</lable> -->
</div>
<div class="right-div">
	<h3>Enter Author Name</h3>
	<input type="text" name="Author" placeholder="Enter Authors name" required>
<hr>
</div>
<div class="left-div">
	<h3>Enter Description</h3>
	<input type="text" name="Descp" placeholder="Enter Description" required>
<hr>
</div>
<button class="button">Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
</html>