package com.fitlAAC.apis;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class ConnectFactory {
	static Connection conn = null;
	private ConnectFactory(){
	}
	public static Connection getConnection() throws SQLException {
		if (conn == null||conn.isClosed()) 
		{
			String url = "jdbc:mysql://localhost:3306/";
			String dbName = "aac_fitl";
			String driver = "com.mysql.jdbc.Driver";
			String userName = "root";
			String password = "";
			try {
				System.out.println("Inside Connection Factory");
				Class.forName(driver).newInstance();
				conn = (Connection) DriverManager.getConnection(url + dbName,
						userName, password);
				System.out.println("Connected to the database");
			} catch (Exception e) {
				e.printStackTrace();
			}
			return conn;
		} else {
			return (Connection) conn;
		}
	}
}
