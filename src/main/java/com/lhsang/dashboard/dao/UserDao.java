package com.lhsang.dashboard.dao;

import java.util.List;


import com.lhsang.dashboard.model.User;


public interface UserDao  {
	List<User> findAll(Integer offset, Integer maxResults);
	User findOneByUsername(String username);
	void save(User user);
	Long count();
}
