package com.fitlAAC.apis;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class studentDAO {
	public static Connection getConnection()
	{
		try {
			return (Connection) ConnectFactory.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;  
	}
	public static boolean loginValidation(String username)
	 {
		  try{
			   Connection connection=getConnection();
			   Statement statement = null;
			   ResultSet rs = null;
			   statement = (Statement) connection.createStatement();
			   String QueryStr="select student_id,first_name,last_name,s_email from student";
			   rs = statement.executeQuery(QueryStr);
			   while(rs.next()){
				   String loginusername = rs.getString("student_id");
				   if(username.equals(loginusername))
				   {
					   statement.close();
					   rs.close();
					   return true;
				   }
			   }
			   statement.close();
			   rs.close();
		  }catch (Exception e){
    			  e.printStackTrace();
		 }
		  
		  return false;
	 }
}
