package com.lhsang.dashboard.dao;

import java.util.List;


import com.lhsang.dashboard.model.User;


public interface UserDao  {
	List<User> findAll();
	User findOneByUsername(String username);
	void save(User user);
}
