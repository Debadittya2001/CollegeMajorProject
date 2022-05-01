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

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("update booklist set Bname='"+Bname+"',price='"+price+"',Status='"+Status+"',Author='"+Author+"',Descp='"+Descp+"' where BID='"+BID+"'");
	if(Status.equals("Not_Available"))
	{
		st.executeUpdate("delete from cart where BookedID='"+BID+"' and address is NULL");
	}
	response.sendRedirect("AllBooks.jsp?msg=done");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("AllBooks.jsp?msg=Wrong");
}

%>