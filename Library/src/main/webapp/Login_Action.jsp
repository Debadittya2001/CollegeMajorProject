<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import ="project.ConnectionProvider" %>
<%
String MailID =request.getParameter("MailID");
String Password=request.getParameter("Password");
if("admin@gmail.com".equals(MailID) && "admin".equals(Password))
{
	session.setAttribute("MailID",MailID);
	response.sendRedirect("admin/adminHome.jsp");
	out.println("Success");
} 
else
{
	int z=0;
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("Select * from user where MailID='"+MailID+"' and Password='"+Password+"'");
	while(rs.next())
	{	
		z=1;
	 	session.setAttribute("MailID",MailID);
		response.sendRedirect("home.jsp");
	}
	if(z==0)
		response.sendRedirect("index.jsp?msg=notexist");
	
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("index.jsp?msg=invalid");
}
}
%>

