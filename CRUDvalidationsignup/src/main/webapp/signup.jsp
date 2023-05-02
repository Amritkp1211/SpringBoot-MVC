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
    	  var reg=/^[0-9]{10}+$/;
    	  
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
    if(request.getAttribute("msg")!=null){
    	out.println(request.getAttribute("msg"));
    }
%>
<form name="frm" action="UserController" method="post">
  <table cellspaing="10px" cellpadding="10px">
        <caption>SignUp
         Form</caption>
        <br>
      <tr>
          <td >First Name</td>
          <td><input type="text" name="fname" onblur="CheckFname()"></td>
          <td><span id="fname"></span></td>
      </tr>
      <tr>
          <td>Last Name</td>
          <td><input type="text" name="lname" onblur="CheckLname()"></td>
          <td><span id="lname"></span></td>
          
      </tr>
      <tr>
          <td>Email</td>
          <td><input type="text" name="email" onblur="CheckEmail()"></td>
          <td><span id="email"></span></td>
      </tr>
      <tr>
          <td>Mobile</td>
          <td><input type="text" name="mobile" onblur="CheckMobile()"></td>
          <td><span id="mobile"></span></td>
      </tr>
      <tr>
          <td>Address</td>
          <td><textarea name="address" rows="2" cols="20"></textarea></td>
      </tr>
      <tr>
          <td>DOB</td>
          <td><input type="date" name="dob"></td>
      </tr>
      <tr>
          <td>gender</td>
          <td>
             <input type="radio" name="gender" value="male">male
             <input type="radio" name="gender" value="female">female
          </td>
      </tr>
      <tr>
            
          <td>Qualification</td>
           <td>
              <select name="quali">
                 <option>---Select Qualification---</option>
                 <option value="BA">BA</option>
                 <option value="Bcom">Bcom</option>
                 <option value="Bsc">Bsc</option>  
              </select>
           </td>
      </tr>
      <tr><td>Hobby</td>
          <td><input type="checkbox" name="hobby" value="playing">Playing
              <input type="checkbox" name="hobby" value="swimming">Swimming
              <input type="checkbox" name="hobby" value="reading">Reading
           </td>
      </tr>
      <tr>
           <td>Password</td>
           <td><input type="password" name="password" ></td>
           
      </tr>
      <tr>
           <td>Confirm Password</td>
           <td><input type="password" name="cpassword" ></td>
           
      </tr>
      <tr>
           <td colspan="2" align="center">
                <input type="submit" name="action" value="signup">
           </td>
      </tr>
  </table>
</form>

</body>
</html>