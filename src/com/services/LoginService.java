package com.services;

import com.dao.LoginDao;
import com.domain.User;

public class LoginService implements iService {

	public User validate(String n, String p) {
		// TODO Auto-generated method stub
		User user =new User();
		user=LoginDao.validate(n, p);
		return user;
	}
	
	public boolean registerUser(User user) {
		// TODO Auto-generated method stub
		boolean isRegistered=LoginDao.registerUser(user);
		return isRegistered;
	}

	@Override
	public User fetchUser(int driverId) {
		// TODO Auto-generated method stub
		User user=new User();
		user=LoginDao.fetchUser(driverId);
		return user;
	}
	
	

}
