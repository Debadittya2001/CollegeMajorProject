<%@ page import ="java.sql.*" %>
<%@ page import ="project.ConnectionProvider" %>
<%
String name =request.getParameter("Name");
String email=request.getParameter("MailID");
String pass=request.getParameter("Password");
try{
	/* Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lib","root","@Serverpass123");
	Statement st=con.createStatement(); */
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into user values(?,?,?)");
	ps.setString(1,name);
	ps.setString(2,email);
	ps.setString(3,pass);
	ps.executeUpdate();
	response.sendRedirect("Register.jsp?msg=valid");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("Register.jsp?msg=invalid");
}
%>


