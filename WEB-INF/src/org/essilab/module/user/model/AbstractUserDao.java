package org.essilab.module.user.model;

import java.sql.Connection;
import java.sql.DriverManager;

public abstract class AbstractUserDao {
	Class<?> model = User.class;
	
	static Connection connection = null;
	static {
		try { 
			Class.forName("com.mysql.jdbc.Driver").newInstance(); 
		    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/recrutement",
				"root","isa13");  
		}
		catch (Exception e) { e.printStackTrace();}
	}
	public Connection getConnection(){
		return connection;
	}
	public static void main(String[] args) {

	}
}
