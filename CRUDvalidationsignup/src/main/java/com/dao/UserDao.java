package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.User;
import com.util.UserUtil;

public class UserDao {

	public static void signup(User u) {

		try {
			Connection conn = UserUtil.createConnection();
			String sql = "insert into user(fname,lname,email,mobile,address,dob,gender,quali,hobby,password) values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, u.getFname());
			pst.setString(2, u.getLname());
			pst.setString(3, u.getEmail());
			pst.setLong(4, u.getMobile());
			pst.setString(5, u.getAddress());
			pst.setString(6, u.getDob());
			pst.setString(7, u.getGender());
			pst.setString(8, u.getQuali());
			pst.setString(9, u.getHobby());
			pst.setString(10, u.getPassword());
			pst.executeUpdate();
		} 
		catch (Exception e) {
			e.printStackTrace();	
		}
   }
	
	public static boolean CheckEmail(String email) {
		boolean flag=false;
		try {
			Connection conn=UserUtil.createConnection();
			String sql="select * from user where email=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1,email );
			ResultSet rs=pst.executeQuery();
			
			if(rs.next()) {
				flag=true;
			}
			
			
		} catch (Exception e) {
          e.printStackTrace();		}
		
		return flag;
		
	}
	
	public static User loginUser(String email) {
		User u=null;
		try {
			Connection con=UserUtil.createConnection();
			String sql="select * from user where email=?";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs=pst.executeQuery();
			if(rs.next()) {
				  u=new User();
				  u.setId(rs.getInt("id"));
				  u.setFname(rs.getString("fname"));
				  u.setLname(rs.getString("lname"));
				  u.setEmail(rs.getString("email"));
				  u.setMobile(rs.getLong("mobile"));
				  u.setAddress(rs.getString("address"));
				  u.setDob(rs.getString("dob"));
				  u.setGender(rs.getString("gender"));
				  u.setQuali(rs.getString("quali"));
				  u.setHobby(rs.getString("hobby"));
				  u.setPassword(rs.getString("password"));
			}
		} catch (Exception e) {
e.printStackTrace();		}
		
		return u;
		
	}
}
