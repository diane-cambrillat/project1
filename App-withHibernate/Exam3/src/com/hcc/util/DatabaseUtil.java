package com.hcc.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseUtil {
	public DatabaseUtil(){
		
	}
	
	public static Connection getConnection() {
		Connection conn = null;
	
		try { 
			Class.forName("com.mysql.cj.jdbc.Driver");
			String connURL = "jdbc:mysql://localhost:3306/studentdb?characterEncoding=utf8&serverTimezone=UTC";
			String user = "root";
			String pwd = "";
			conn = DriverManager.getConnection(connURL, user, pwd);
			} catch(SQLException e) {
				e.printStackTrace();

			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return conn;
}
}
