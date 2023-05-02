<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1" cellspaing="10px" cellpadding="10px" width="100%">
   <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>EMAIL</th>
        <th>EDIT</th>
        <th>DELETE</th>
   </tr>
   <tr>
      <td></td>
      <td></td>
      <td></td>
      <td>
         <form name="edit" method="post" action="StudentController">
              <input type="hidden" name="id" value="">
              <input type="submit" name="action" value="edit">
         </form>
      </td>
       <td>
         <form name="delete" method="post" action="StudentController">
              <input type="hidden" name="id" value="">
              <input type="submit" name="action" value="delete">
         </form>
      </td>
   </tr>
   
</table>
</body>
</html>