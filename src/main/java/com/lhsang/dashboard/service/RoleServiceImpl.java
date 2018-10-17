package com.lhsang.dashboard.service;



import java.util.Hashtable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lhsang.dashboard.dao.RoleDao;
import com.lhsang.dashboard.model.Role;


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
}
