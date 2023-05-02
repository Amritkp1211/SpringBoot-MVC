<%@page import="com.dao.StudentDao"%>
<%@page import="com.bean.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<%
  Student s=(Student)request.getAttribute("s");
%>
<body>
<form  name="ffrm" method="post" action="StudentController">
        <table cellspacing="10px" cellpadding="10px">
               <tr>
                  <td>ID</td>
                  <td><input type="text" name="id" value="<%=s.getId()%>"></td>
              </tr>
              <tr>
                  <td>NAME</td>
                  <td><input type="text" name="name" value="<%=s.getName()%>"></td>
              </tr>
              <tr>
                  <td>EMAIL</td>
                  <td><input type="text" name="email" value="<%=s.getEmail()%>"></td>
              </tr>
              <tr>
                  <td colspan="2" align="center">
                     <input type="submit" name="action" value="update"></td>
              </tr>
        
        </table>
</form>

</body>
</html>