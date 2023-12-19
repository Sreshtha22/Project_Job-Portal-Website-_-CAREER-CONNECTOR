package org.mis;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	static Connection con;
	public static  Connection createC()
	{
		String url="jdbc:mysql://localhost:3306/careerconnector";
		String uid="root";
		String upass="";
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection(url,uid,upass);
	}catch(Exception e) {}
		return con;
	}
}


