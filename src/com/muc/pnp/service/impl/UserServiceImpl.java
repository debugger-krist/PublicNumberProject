package com.muc.pnp.service.impl;

import com.muc.pnp.entity.Info;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.muc.pnp.dao.UserDao;
import com.muc.pnp.entity.User;
import com.muc.pnp.service.UserService;
import com.mysql.jdbc.log.Log;

import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	@Override
	public User findByUsername(String username) {
		// TODO Auto-generated method stub
		return userDao.findByUsername(username);
	}
	@Override
	public int editPassword(User user) {
		// TODO Auto-generated method stub
		return userDao.editPassword(user);
	}

	@Override
	public void userRegister(User userInfo) {
		userDao.userRegister(userInfo);
	}

	@Override
	public List<Info> getInfo(String username) {
		return userDao.getInfo(username);
	}
 }

	

