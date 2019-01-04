package com.lhsang.dashboard.service;

import java.util.List;

import com.lhsang.dashboard.model.User;

public interface UserService {
	List<User> findAll(int offset,int maxResults);
	User findOneByUsername(String username);
	void save(User user);
}
