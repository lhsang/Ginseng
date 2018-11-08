package com.lhsang.dashboard.dao;

import java.util.List;

import com.lhsang.dashboard.model.Role;

public interface RoleDao {
	List<Role> findAll(); 
	Role findOneById(int id);
	
	void save(Role role);
}
