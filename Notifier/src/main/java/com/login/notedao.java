package com.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class notedao {

	private String dbUrl = "jdbc:mysql://localhost:3306/userdb";
	private String dbUname = "root";
	private String dbPassword = "1234";
	private String dbDriver = "com.mysql.jdbc.Driver";
	
	public void loadDriver(String dbDriver)
	{
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Connection getConnection()
	{
		Connection con = null;
		try {
			con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	
	
	public String insert(notepojo notepojo)
	{
		loadDriver(dbDriver);
		Connection con = getConnection();
		String result = "Data entered successfully";
		String sql = "insert into invnt values(?,?,?,?,?,?,?,?,?)";
		
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		ps.setString(1, notepojo.getUname());
		ps.setString(2, notepojo.getNbname());
		ps.setString(3, notepojo.getNote());
		ps.setDate(4,   java.sql.Date.valueOf(notepojo.getSd()));
		ps.setDate(5, java.sql.Date.valueOf(notepojo.getSd()));
		ps.setDate(6, java.sql.Date.valueOf(notepojo.getSd()));
		ps.setString(7, notepojo.getStatus());
		ps.setString(8, notepojo.getTag());
		ps.setString(9, notepojo.getDesp());	
		
		
		
		
		
		
		
		ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "Data not entered,Username already exists";
		}
		return result;
	}

	
	
	
}
