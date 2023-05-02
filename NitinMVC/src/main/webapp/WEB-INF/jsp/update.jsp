<%@page import="com.bean.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	Student s=(Student)request.getAttribute("s");
%>
<form  name="frm" method="post" action="update">
<table cellspacing="10px" cellpadding="10px">
	<tr>
		<td><input type="hidden" name="id" value="<%=s.getId()%>"></td>
	
	<tr>
		<td>FIRST NAME</td>
		<td><input type="text" name="fname" value="<%=s.getFname() %>"></td>
    </tr>
	<tr>
		<td>LAST NAME</td>
		<td><input type="text" name="lname" value="<%=s.getLname() %>"></td>
	</tr>
	<tr>
		<td>EMAIL</td>
		<td><input type="text" name="email" value="<%=s.getEmail() %>"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
		<input type="submit" name="action" value="update"></td>
		</table>
</form>

</body>
</html>