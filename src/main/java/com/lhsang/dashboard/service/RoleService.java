package com.lhsang.dashboard.service;

import java.util.List;

import com.lhsang.dashboard.model.Role;


public interface RoleService {
	public List<Role> findAll();
	public Role findOneById(int id);
	public void save(Role role);
}
