 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider" %>
<%@include file="adminHeader.jsp"  %>
<% 

String BID=request.getParameter("id");
String Bname=request.getParameter("Bname");
String price=request.getParameter("price");
String Status=request.getParameter("Status");
String Author=request.getParameter("Author");
String Descp=request.getParameter("Descp");

try
{
	Connection con=ConnectionProvider.getCon();

	PreparedStatement ps=con.prepareStatement("insert into booklist values(?,?,?,?,?,?)");
	ps.setString(1, BID);
	ps.setString(2, Bname);
	ps.setString(3, price);
	ps.setString(4, Status);
	ps.setString(5, Author);
	ps.setString(6, Descp);
	ps.executeUpdate();
	response.sendRedirect("addnewbook.jsp?msg=Done");
}
catch(Exception e)
{
	response.sendRedirect("addnewbook.jsp?msg=Wrong");	
}
%> 