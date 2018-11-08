package com.lhsang.dashboard.service;

import java.util.List;

import com.lhsang.dashboard.model.Role;
import com.lhsang.dashboard.model.User;


public interface RoleService {
	public List<Role> findAll();
	public Role findOneById(int id);
	public void save(User user);
}
