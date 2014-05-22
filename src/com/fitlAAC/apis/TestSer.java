package com.fitlAAC.apis;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class TestSer {
	
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
	
	public void testUpdate()
	{
		StudentInfo st=new StudentInfo();
		try{
			   Connection connection=getConnection();
			   Statement statement = null;
			   ResultSet rs = null;
			   statement = (Statement) connection.createStatement();
			   String QueryStr="select student_id,first_name,last_name,s_email from student where student_id='123'";
			   rs = statement.executeQuery(QueryStr);
			   while(rs.next()){
				   st.netID = rs.getString("student_id");
				   st.fName = rs.getString("first_name");
				   st.lName = rs.getString("Last_name");
				   st.sEmail= rs.getString("s_email");
			   }
			   statement.close();
			   rs.close();
			   Serialization ser= new Serialization();
			   if((boolean)ser.writeJavaObject(st.netID,st))
				   System.out.println("Done Serializing");
			   
			   StudentInfo getst= (StudentInfo) ser.readJavaObject(st.netID);
			   
			   System.out.println("De-serializing");
			   System.out.println("Student Name: "+getst.fName+" "+getst.lName);
			   System.out.println("Student NetID: "+ getst.netID);
			   System.out.println("email: "+getst.sEmail);
			   System.out.println("No of times video of panel 1 watched: "+getst.noOfTimesVideoWatched[1]);
		  }catch (Exception e){
 			  e.printStackTrace();
		 }
	}
	
}
