package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Student;
import com.dao.StudentDao;
import com.util.StudentUtil;

@WebServlet("/StudentController")
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 String action=request.getParameter("action");
		 
		 if(action.equalsIgnoreCase("insert")) {
			 
			 Student s=new Student();
			 s.setName(request.getParameter("name"));
			 s.setEmail(request.getParameter("email"));
			  StudentDao.insertStudent(s);
			  response.sendRedirect("show.jsp");
		 }
		 
		 else if(action.equalsIgnoreCase("edit")) {
			int id=Integer.parseInt(request.getParameter("id"));
			 Student s=StudentDao.get1Student(id);
			 request.setAttribute("s", s);
			 request.getRequestDispatcher("update.jsp").forward(request, response);
		}
		 
		 else if(action.equalsIgnoreCase("update")) {
			 Student s=new Student();
			 s.setId(Integer.parseInt(request.getParameter("id")));
			 s.setName(request.getParameter("name"));
			 s.setEmail(request.getParameter("email"));
			  StudentDao.updateStudent(s);
			  response.sendRedirect("show.jsp");
		 }
		 
		 else if(action.equalsIgnoreCase("delete")) {
			 int id=Integer.parseInt(request.getParameter("id"));
			 StudentDao.deleteStudent(id);
			 response.sendRedirect("show.jsp");
		 }
	}

}
