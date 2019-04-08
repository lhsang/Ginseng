package com.lhsang.dashboard.service;

import java.util.List;

import com.lhsang.dashboard.model.User;

public interface UserService {
	List<User> findAll(Integer offset,Integer maxResults);
	User findOneByUsername(String username);
	void save(User user);
	Long count();
}
