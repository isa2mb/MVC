package org.essilab.module.user.model;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;




public class UserDao extends AbstractUserDao{
	PreparedStatement psInsert = null;
	PreparedStatement psCheck = null;
	public static UserDao getInstance() 
	{
		//System.out.println("User DAO appelé");
		return new UserDao();
	}

	PreparedStatement psFindAll = null;
	public List<User> findAll() throws SQLException 
	{
		
		if (null == psFindAll) 
		{
			psFindAll = connection.prepareStatement("SELECT mail,mdp, nom, prenom FROM users");
		}
		ResultSet result = psFindAll.executeQuery();
		System.out.println(result.getMetaData().getColumnName(1));
		if (null != result) 
		{
			List<User> users = new ArrayList<>();
			while (result.next()) 
			{
			  users.add(new User(
					  result.getString("nom"),
					  result.getString("prenom"),
					  result.getString("mail"),
					  result.getString("mdp")));	
			}
			return users;
		}
		return null;
	}
	
	public static String getEncodedPassword(String key) throws NoSuchAlgorithmException {
		byte[] uniqueKey = key.getBytes();
		byte[] hash = null;
		hash = MessageDigest.getInstance("MD5").digest(uniqueKey);
		StringBuffer hashString = new StringBuffer();
		for ( int i = 0; i < hash.length; ++i ) {
		String hex = Integer.toHexString(hash[i]);
		if ( hex.length() == 1 ) {
		hashString.append('0');
		hashString.append(hex.charAt(hex.length()-1));
		} else {
		hashString.append(hex.substring(hex.length()-2));
		}
		}
		return hashString.toString();
		}
	
	public static void main(String[] args)  
	{
		try {
			List<User> users = getInstance().findAll();
			for (User u : users) {
				System.out.println(u.mail);
			}
			System.out.println(users.size());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public boolean CheckMail(User u)
	{
		if(null == psCheck)
		{
			try {
				psCheck = connection.prepareStatement("SELECT * From users Where mail="+  u.mail +" ");
				ResultSet result = psCheck.executeQuery();
				System.out.println(result + "mail exists");
				if(result == null)
				{
					return true;
					
				}
				return false;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return false;
	}
	
	public boolean insert(User u) throws SQLException 
	{	
		if(CheckMail(u))
		{
			//System.out.println(u.mail + u.nom);
			if (null == psInsert) 
			{
					psInsert = connection.prepareStatement("INSERT INTO users (`nom`,`prenom`,`mail`,`mdp`) VALUES " +
							//"('" + u.nom + "', '" + u.prenom + "', '" + u.mail + "', '" + u.mdp + "')");
					"(?,?,?,?)");
					
			}
			
			psInsert.setString(1, u.nom);
			psInsert.setString(2, u.prenom);
			psInsert.setString(3, u.mail);
			try {
				psInsert.setString(4, getEncodedPassword(u.mdp));
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			psInsert.executeUpdate();
			//psInsert.executeQuery();
			return true;
		}
		else
			return false;
	}
	

}
