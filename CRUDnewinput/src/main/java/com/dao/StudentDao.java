package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import com.bean.Student;
import com.util.StudentUtil;

public class StudentDao {

	public static void insertStudent(Student s) {
		  
		try {
			Connection conn=StudentUtil.createConnection();
			String sql="insert into sx(name,email) values(?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1,s.getName());
			pst.setString(2,s.getEmail());
			pst.executeUpdate();
		} catch (Exception e) {
		e.printStackTrace();
		}
	}
	
	public static List<Student> getAllStudent(){
		List<Student> list=new ArrayList<Student>();
		try {
			Connection conn=StudentUtil.createConnection();
			String sql="select * from sx";
			PreparedStatement pst=conn.prepareStatement(sql);
			  pst.setInt(0, 0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
