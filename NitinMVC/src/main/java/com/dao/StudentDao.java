package com.dao;

import java.util.List;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import com.bean.Student;

public class StudentDao {
	
	private HibernateTemplate hibernatetemplate;
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernatetemplate;
	}
	public void setHibernateTemplate(HibernateTemplate hibernatetemplate) {
		this.hibernatetemplate=hibernatetemplate;
	}
	@Transactional
	public void insert(Student s) {
		hibernatetemplate.saveOrUpdate(s);
	}
	@Transactional
	public List<Student> getaAllstudent(){
		return hibernatetemplate.loadAll(Student.class);
		
	}
	@Transactional
	public Student getAllstudentById(int id) {
		return hibernatetemplate.get(Student.class,id);
	}
	@Transactional
	public void delete(int id) {
		Student s=hibernatetemplate.get(Student.class, id);
		hibernatetemplate.delete(s);
	}

}
