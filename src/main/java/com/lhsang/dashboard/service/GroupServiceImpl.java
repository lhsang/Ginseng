package com.lhsang.dashboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lhsang.dashboard.dao.GroupDao;
import com.lhsang.dashboard.dao.RoleDao;
import com.lhsang.dashboard.model.Group;
import com.lhsang.dashboard.model.Role;


@Transactional
@Service("groupService")
public class GroupServiceImpl implements GroupService{
	
	@Autowired
	GroupDao groupDao;
	
	public List<Group> findAll() {
		return groupDao.findAll();
	}
	
	public Group  findOneById(int id) {
		return groupDao.findOneById(id);
	}
	
	public void save(Group group) {
		groupDao.save(group);
	}

}
