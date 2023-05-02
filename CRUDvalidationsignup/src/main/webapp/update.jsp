<%@page import="com.bean.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">

      function CheckFname() {
    	  var r=document.frm.fname.value;
    	  var reg=/^[a-zA-Z]+$/;
    	  
    	  if(r==""){
    		  document.getElementById("fname").innerHTML="please enter first name";
    	  }
    	  else if(!reg.test(r)){
    		  document.getElementById("fname").innerHTML="please enter alphabets only";
    	  }
    	  else{
    		  document.getElementById("fname").innerHTML="";
    	  }
		}
      
      function CheckLname() {
    	  var r=document.frm.lname.value;
    	  var reg=/^[a-zA-Z]+$/;
    	  
    	  if(r==""){
    		  document.getElementById("lname").innerHTML="please enter last name";
    	  }
    	  else if(!reg.test(r)){
    		  document.getElementById("lname").innerHTML="please enter alphabets only";
    	  }
    	  else{
    		  document.getElementById("lname").innerHTML="";
    	  }
		}
      
      function CheckEmail() {
    	  var r=document.frm.email.value;
    	  var reg=/^[a-zA-Z-_.0-9]+@[a-z]+\.[a-zA-Z]{2,4}$/;
    	  
    	  if(r==""){
    		  document.getElementById("email").innerHTML="please enter email";
    	  }
    	  else if(!reg.test(r)){
    		  document.getElementById("email").innerHTML="please enter valid email";
    	  }
    	  else{
    		  document.getElementById("email").innerHTML="";
    	  }
		}
      
      function CheckMobile() {
    	  var r=document.mobile.mobile.value;
    	  var reg=/^[0-9]{10}$/;
    	  
    	  if(r==""){
    		  document.getElementById("mobile").innerHTML="please enter mobile no";
    	  }
    	  else if(!reg.test(r)){
    		  document.getElementById("mobile").innerHTML="please enter digits only";
    	  }
    	  else{
    		  document.getElementById("mobile").innerHTML="";
    	  }
		}
      
      
</script>
</head>
<body>
	<%
    User u=(User)session.getAttribute("u");
%>
	<form name="frm" action="UserController" method="post">
		<table cellspaing="10px" cellpadding="10px">
			<caption>PROFILE</caption>
			<br>
			<tr>
				<td>First Name</td>
				<td><input type="text" name="fname" onblur="CheckFname()"
					value="<%=u.getFname()%>"></td>
				<td><span id="fname"></span></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="lname" onblur="CheckLname()"
					value="<%=u.getLname()%>"></td>
				<td><span id="lname"></span></td>

			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" onblur="CheckEmail()"
					value="<%=u.getEmail()%>"></td>
				<td><span id="email"></span></td>
			</tr>
			<tr>
				<td>Mobile</td>
				<td><input type="text" name="mobile" onblur="CheckMobile()"
					value="<%=u.getMobile()%>"></td>
				<td><span id="mobile"></span></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><textarea name="address" rows="2" cols="20"><%=u.getAddress()%></textarea></td>
			</tr>
			<tr>
				<td>DOB</td>
				<td><input type="date" name="dob" value="<%=u.getDob()%>"></td>
			</tr>
			<tr>
				<td>gender</td>
				<td>
					<%
             if(u.getGender().equals("male")){
                %> <input type="radio" name="gender" value="male"
					checked="checked">male <input type="radio" name="gender"
					value="female">female <%
             }else{
            	 %> <input type="radio" name="gender" value="male">male
					<input type="radio" name="gender" value="female" checked="checked">female

					<%
             }%>
				</td>
			</tr>
			<tr>

				<td>Qualification</td>
				<td><select name="quali">
						<%if(u.getQuali().equals("BA")){
						%>
						<option value="BA" selected="selected">BA</option>
						<option value="Bcom">Bcom</option>
						<option value="Bsc">Bsc</option>
						 <%  
						}
						else if(u.getQuali().equals("Bcom")){
						%>
						<option value="BA">BA</option>
						<option value="Bcom" selected="selected">Bcom</option>
						<option value="Bsc">Bsc</option>
						 <%  
						}else{
						%>
						<option value="BA">BA</option>
						<option value="Bcom">Bcom</option>
						<option value="Bsc" selected="selected">Bsc</option>
						 <%
						} 
						%>
						
				</select></td>
			</tr>
			<tr>
				<td>Hobby</td>
				<td><input type="checkbox" name="hobby" value="playing">Playing
					<input type="checkbox" name="hobby" value="swimming">Swimming
					<input type="checkbox" name="hobby" value="reading">Reading
				</td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" value="<%=u.getPassword()%>"></td>
    
			</tr>
			<tr>
				<td>Confirm Password</td>
				<td><input type="password" name="cpassword" value="<%=u.getPassword()%>"></td>

			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					name="action" value="update"></td>
			</tr>
		</table>
	</form>

</body>
</html>