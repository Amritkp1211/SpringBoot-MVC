<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form name="ins" method="post" action="StudentController">
<table cellpadding="10px" cellspaing="10px">
<tr>
      <td>Name</td>
      <td><input type="text" name="name"></td>
</tr>
<tr>
      <td>Email</td>
      <td><input type="text" name="email"></td>
</tr>

<tr>
      <td colspan="2" align="center">
         <input type="submit" name="action" value="insert">
      </td>
      
</tr>
</table>

</form>

</body>
</html>