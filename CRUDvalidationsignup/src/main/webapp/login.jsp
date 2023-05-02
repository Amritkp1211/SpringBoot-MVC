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
    if(request.getAttribute("msg")!=null){
    	out.println(request.getAttribute("msg"));
    }
%>
<form name="login" method="post" action="UserController">
<table>
<caption>Login</caption>
<tr>
<th>welcome to login page</th></tr>

<tr>
   <td>Email</td>
   <td><input type="text" name="email"></td>
</tr>
<tr>
   <td>password</td>
   <td><input type="text" name="password"></td>
</tr>
<tr>
   <td colspan="1" align="center">
   <td><input type="submit" name="action" value="login"></td>
</tr>
</table>
</form>
</body>
</html>