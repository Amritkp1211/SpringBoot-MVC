<%@page import="com.bean.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.StudentDao"%>
<%@page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
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
	ApplicationContext a=new ClassPathXmlApplicationContext("Beans.xml");
	StudentDao studentdao=(StudentDao)a.getBean("studentdao");
	List<Student> list=studentdao.getaAllstudent();
%>
<table cellspacing="7px" cellpadding="7px" border="2">
	<tr>
		<th>FIRST NAME</th>
		<th>LAST NAME</th>
		<th>EMAIL</th>
		<th>EDIT</th>
		<th>DELETE</th>
	</tr>
	<%
		for(Student s:list){
			%>
			<td><%=s.getFname() %></td>
			<td><%=s.getLname() %></td>
			<td><%=s.getEmail() %></td>
			td>
				<form  name="edit" method="post" action="edit">
				<input type="hidden" name="id" value="<%=s.getId() %>">
				<input type="submit" name="action" value="edit"> 
				</form>
			</td>
			td>
				<form  name="delete" method="post" action="delete">
				<input type="hidden" name="id" value="<%=s.getId() %>">
				<input type="submit" name="action" value="delete"> 
				</form>
			</td>
			<%
		}
	%>
	

</table>

</body>
</html>