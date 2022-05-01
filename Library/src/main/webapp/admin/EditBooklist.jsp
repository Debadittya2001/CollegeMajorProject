<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider" %>
<%@include file="adminHeader.jsp"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2><a class="back" href="AllBooks.jsp"><i class='fas fa-arrow-circle-left'>Back</i></a></h2>
<%
String id=request.getParameter("id");
try{
	
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from booklist where BID='"+id+"'");
	while(rs.next())
	{
%>
<form action="EditBooklist_Action.jsp" method="post">
<input type="hidden" name="id" value="<%out.println(id); %>">
<div>
<h3>Enter Book Name</h3>
<input type="text" name="Bname" value="<%=rs.getString(2)%>" required>
<hr>
</div>
<div>
<h3>Enter Price</h3>
<input type="number" name="price" value="<%=rs.getString(3)%>" required>
<hr>
</div>
<div>
<h3>Enter Status</h3>
<select  name="Status">
	<option value="Available">Available</option>
	 <option value="Not_Available">Not_Available</option>
	</select>
<hr>
</div>
<div>
<h3>Enter Author</h3>
<input type="text" name="Author" value="<%=rs.getString(5)%>" required>
<hr>
</div>
<div>
<h3>Enter Description</h3>
<input type="text" name="Descp" value="<%=rs.getString(6)%>" required>
<hr>
</div>
<button>Save</button>
</form>

<%
}
}
catch(Exception e)
{
	System.out.println(e);

}
%>
</body>
</html>