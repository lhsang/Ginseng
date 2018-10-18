package com.lhsang.dashboard.service;



import java.util.List;

import com.lhsang.dashboard.model.User;

public interface UserService {
	List<User> findAll();
	User findOneByUsername(String username);
}
