package com.lhsang.dashboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lhsang.dashboard.dao.UserDao;
import com.lhsang.dashboard.model.User;



@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDao userDao;
	
	public List<User> findAll(Integer offset,Integer maxResults){
		return  userDao.findAll(offset, maxResults);
	}
	
	public User findOneByUsername(String username) {
		return userDao.findOneByUsername(username);
	}
	
	public void save(User user) {
		userDao.save(user);
	}
	
	public Long count() {
		return userDao.count();
	}
}
