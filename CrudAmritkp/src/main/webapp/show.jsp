<%@page import="com.dao.StudentDao"%>
<%@page import="com.bean.Student"%>
<%@page import="java.util.List"%>
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
   List<Student> list=StudentDao.getStudent();
%>
<table border="2" cellspacing="10px" cellpadding="10px" width="100%">
     
     <tr>
       
        <th>ID</th>
        <th>NAME</th>
        <th>EMAIL</th>
        <th>EDIT</th>
        <th>DELETE</th>
     </tr>
     <%
          for(Student s:list){
       %>
     
     <tr>
        <td><%=s.getId() %></td> 
        <td><%=s.getName() %></td> 
        <td><%=s.getEmail() %></td> 
        <td>
           <form name="edit" method="post" name="action">
               <input type="hidden" name="id" value="<%=s.getId()%>">
               <input type="submit" name="action" value="edit">
           </form>
        </td> 
        <td>
           <form name="delete" method="post" name="action">
               <input type="hidden" name="id" value="<%=s.getId()%>">
               <input type="submit" name="action" value="delete">
           </form>
        </td>    
     </tr>
     <%
     }
     %>

</table>

</body>
</html>