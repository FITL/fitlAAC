package com.fitlAAC.apis;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;

public class Serialization {
	
	static final String WRITE_OBJECT_SQL = "UPDATE student SET serialize_obj=(?) WHERE student_id=(?);";

	static final String READ_OBJECT_SQL = "SELECT serialize_obj FROM student WHERE student_id = ?";
	
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
	
	public boolean writeJavaObject(String netID,Object object) throws Exception {
	    
		String className = object.getClass().getName();
		Connection connection=getConnection();
	    PreparedStatement pstmt = (PreparedStatement) connection.prepareStatement(WRITE_OBJECT_SQL);
	    
	    // set input parameters
	    pstmt.setObject(1, object);
	    pstmt.setString(2, netID);
	    
	    pstmt.executeUpdate();
	    /*
	    //get the generated key for the id
	    ResultSet rs = pstmt.getGeneratedKeys();
	    int id = -1;
	    if (rs.next()) {
	      id = rs.getInt(1);
	    }
	    System.out.println("id:"+pstmt.RETURN_GENERATED_KEYS);
	    rs.close();
	    */
	    pstmt.close();
	    System.out.println("writeJavaObject: done serializing: " + className);
	    return true;
	  }
	public Object readJavaObject(String NetID) throws Exception {
		Connection connection=getConnection();
		PreparedStatement pstmt = (PreparedStatement) connection.prepareStatement(READ_OBJECT_SQL);
	    pstmt.setString(1, NetID);
	    ResultSet rs = pstmt.executeQuery();
	    rs.next();
	    //Object object = rs.getObject(1);
	    //String className = object.getClass().getName();
	    InputStream is = rs.getBlob("serialize_obj").getBinaryStream();
		ObjectInputStream ois = new ObjectInputStream(is);
		Object x = ois.readObject();
		String className = x.getClass().getName();
	    rs.close();
	    pstmt.close();
	    System.out.println("readJavaObject: done de-serializing: " + className);
	    return x;
	  }
}
