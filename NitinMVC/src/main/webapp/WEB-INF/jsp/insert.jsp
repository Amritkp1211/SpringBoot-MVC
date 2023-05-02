<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form  name="frm" method="post" action="insert">
<table cellspacing="10px" cellpadding="10px">
	
	<tr>
		<td>FIRST NAME</td>
		<td><input type="text" name="fname"></td>
    </tr>
	<tr>
		<td>LAST NAME</td>
		<td><input type="text" name="lname"></td>
	</tr>
	<tr>
		<td>EMAIL</td>
		<td><input type="text" name="email"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
		<input type="submit" name="action" value="insert"></td>
		</table>
</form>

</body>
</html>