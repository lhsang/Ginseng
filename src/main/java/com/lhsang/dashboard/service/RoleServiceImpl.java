package com.lhsang.dashboard.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lhsang.dashboard.dao.RoleDao;
import com.lhsang.dashboard.model.Role;
import com.lhsang.dashboard.model.User;


@Transactional
@Service("roleService")
public class RoleServiceImpl implements RoleService{
	
	@Autowired
	RoleDao roleDao;
	
	public List<Role> findAll() {
		return roleDao.findAll();
	}
	
	public Role  findOneById(int id) {
		return roleDao.findOneById(id);
	}
	
	public void save(Role role) {
		roleDao.save(role);
	}

	@Override
	public void save(User user) {
		// TODO Auto-generated method stub
		
	}
}
