<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form  name="ffrm" method="post" action="StudentController">
        <table cellspacing="10px" cellpadding="10px">
              <tr>
                  <td>NAME</td>
                  <td><input type="text" name="name"></td>
              </tr>
              <tr>
                  <td>EMAIL</td>
                  <td><input type="text" name="email"></td>
              </tr>
              <tr>
                  <td colspan="2" align="center">
                     <input type="submit" name="action" value="insert"></td>
              </tr>
        
        </table>
</form>

</body>
</html>