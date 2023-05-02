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

<table cellspaing="10px" cellpadding="10px">
    <caption>INFO</caption>
    <tr>
       <td><a href="update.jsp">user Profile</a></td>
<br><br>
    </tr>
    <tr>
      <td><a href="logout.jsp">logOut</a><td>
    </tr>
    <tr>
       <td colspan="2" align="center">
        <input type="" name="cdate">
       <input type="submit" name="action" value="Insert"></td>
   </tr>
</table>
</body>
</html>