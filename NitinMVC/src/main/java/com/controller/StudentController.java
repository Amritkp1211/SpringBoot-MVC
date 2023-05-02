package com.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bean.Student;
import com.dao.StudentDao;

@Controller
public class StudentController {
	
	ApplicationContext a=new ClassPathXmlApplicationContext("Beans.xml");
	StudentDao studentdao=(StudentDao)a.getBean("studentdao");
	
	@RequestMapping(value="/",method = RequestMethod.GET)
	public String index() {
		return "insert";
	}
	@RequestMapping(value="insert",method = RequestMethod.POST)
	public String insert(HttpServletRequest request,HttpServletResponse response) {
		Student s=new Student();
		s.setFname(request.getParameter("fname"));
		s.setLname(request.getParameter("lname"));
		s.setEmail(request.getParameter("email"));
		studentdao.insert(s);
		return "show";
	}
	
	public String edit(HttpServletRequest request,HttpServletResponse response) {
		int id=Integer.parseInt(request.getParameter("id"));
		Student s=studentdao.getAllstudentById(id);
		request.setAttribute("s", s);
		return "update";
		
	}
	public String update(HttpServletRequest request,HttpServletResponse response) {
		Student s=new Student();
		s.setId(Integer.parseInt(request.getParameter("id")));
		s.setFname(request.getParameter("fname"));
		s.setLname(request.getParameter("lname"));
		s.setEmail(request.getParameter("email"));
		studentdao.insert(s);
		return "show";
	}
	public String delete(HttpServletRequest request,HttpServletResponse response) {
		int id=Integer.parseInt(request.getParameter("id"));
		studentdao.delete(id);
		return "show";
	}
	
	
	

}
