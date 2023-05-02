package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.User;
import com.dao.UserDao;

@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         String action=request.getParameter("action");
         
         if(action.equalsIgnoreCase("signup")) {
        	   
        	 boolean flag=UserDao.CheckEmail(request.getParameter("email"));
        	 
           if(flag==true) {
        	   request.setAttribute("msg","Email already registered");
        	   request.getRequestDispatcher("signup.jsp").forward(request, response);
             }
           else if(request.getParameter("password").equals(request.getParameter("cpassword"))){
        	     User u=new User();
        	    u.setFname(request.getParameter("fname"));
        	    u.setLname(request.getParameter("lname"));
        	    u.setEmail(request.getParameter("email"));
        	    u.setMobile(Long.parseLong(request.getParameter("mobile")));
        	    u.setAddress(request.getParameter("address"));
        	    u.setDob(request.getParameter("dob"));
        	    u.setGender(request.getParameter("gender"));
        	    u.setQuali(request.getParameter("quali"));
        	    u.setHobby(request.getParameter("hobby"));
        	    u.setPassword(request.getParameter("password"));
        	       UserDao.signup(u);
        	       request.setAttribute("msg","Signup Successfully");
            	   request.getRequestDispatcher("signup.jsp").forward(request, response);
           }
           else {
        	   request.setAttribute("msg","password and confirm password doesnt matched");
        	   request.getRequestDispatcher("signup.jsp").forward(request, response);
           }
         }
         
         else if(action.equalsIgnoreCase("login")) {
        	 
        	 User u=UserDao.loginUser(request.getParameter("email"));
        	 if(u!=null) {
        	
        		 if(u.getPassword().equals(request.getParameter("password"))) {
        			   HttpSession session=request.getSession();
        			   session.setAttribute("u", u);
        			   request.setAttribute("msg","login in successfully");
 					  request.getRequestDispatcher("info.jsp").forward(request, response);

        			    
        		 }
        		 else {
        			 request.setAttribute("msg","password incorrect");
              	   request.getRequestDispatcher("login.jsp").forward(request, response);
        		 }
        		 
        	 }
        	 else {
        		 request.setAttribute("msg","email not registred");
          	   request.getRequestDispatcher("login.jsp").forward(request, response);
        	 }
         }
     
	}

}
