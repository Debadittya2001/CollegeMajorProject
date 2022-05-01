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
<%
String msg=request.getParameter("msg");
if("Done".equals(msg))
{%>
<h3 class="alert">Product Successfully Updated!</h3>
<%} %>
<%
if("Wrong".equals(msg))
{%>
<h3 class="alert">Something Went Wrong! Try again!</h3>
<%} %>	
<table>
	<thead>
		<tr>
			<th scope="col">BID </th>
			<th scope="col">Bname </th>
			<th scope="col">price </th>
			<th scope="col">Status </th>
			<th scope="col">Author </th>
			<th scope="col">Descp </th>
			<th scope="col">Edit<i class="fas fa-pen-fancy"></i></th>
		</tr>
	</thead>
	<tbody>
	<%
	try{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from booklist");
		while(rs.next())
		{
	%>
		 <tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>
			<td><%=rs.getString(6)%></td>
			<td><a href="EditBooklist.jsp?id=<%=rs.getString(1) %>">Edit<i class="fas fa-pen-fancy"></i></a></td>
		</tr> 
	<% 			
		}
		}
		catch(Exception e){
			System.out.println(e);
		}
		%>
	</tbody>
</table>
<br>
<br>
</body>
</html>