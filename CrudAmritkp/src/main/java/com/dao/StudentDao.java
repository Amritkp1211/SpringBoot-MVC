package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Student;
import com.util.StudentUtil;

public class StudentDao {

	public static void insertStudent(Student s) {

		try {
			Connection conn = StudentUtil.creteConnection();
			String sql = "insert into ss(name,email) values(?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, s.getName());
			pst.setString(2, s.getEmail());
			pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static List<Student> getStudent() {

		List<Student> list = new ArrayList<Student>();

		try {
			Connection conn = StudentUtil.creteConnection();
			String sql = "select * from ss";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				Student s = new Student();
				s.setId(rs.getInt("id"));
				s.setName(rs.getString("name"));
				s.setEmail(rs.getString("email"));
				list.add(s);
			}
		} catch (Exception e) {

			e.printStackTrace();
		}
		return list;
	}

	public static Student get1Student(int id) {

		Student s = null;
		try {
			Connection conn =StudentUtil.creteConnection();
			String sql ="select * from ss where id=?";
			PreparedStatement pst =conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				s = new Student();
				s.setId(rs.getInt("id"));
				s.setName(rs.getString("name"));
				s.setEmail(rs.getString("email"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}

	public static void updateStudent(Student s) {

		try {
			Connection conn = StudentUtil.creteConnection();
			String sql = "update ss set name=?,email=? where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, s.getName());
			pst.setString(2, s.getEmail());
			pst.setInt(3,s.getId());
			pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void deleteStudent(int id) {
		
		try {
		     Connection conn=StudentUtil.creteConnection();
		     String sql="delete from ss where id=?";
		     PreparedStatement pst=conn.prepareStatement(sql);
		     pst.setInt(1, id);
		     pst.executeUpdate(sql);
		     		
		} catch (Exception e) {
           e.printStackTrace();
		}
	}

}
