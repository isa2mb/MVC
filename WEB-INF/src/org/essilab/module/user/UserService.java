package org.essilab.module.user;

import java.sql.SQLException;
import java.util.List;

import org.essilab.module.user.model.User;
import org.essilab.module.user.model.UserDao;

public class UserService {

	UserDao userDao = UserDao.getInstance();
	private static UserService instance = null;
	private UserService() { }
	public static UserService getInstance(){
		if ( null == instance)
			instance = new UserService();
		return instance;
	}
	
	public List<User> userList() {
		try {
			return userDao.findAll();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public boolean userInsert(User u ){
		try {
			return userDao.insert(u);
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	} 
}
