package com.lhsang.dashboard.service;

import java.util.List;

import com.lhsang.dashboard.model.Group;


public interface GroupService {
	public List<Group> findAll();
	public Group findOneById(int id);
	public void save(Group group);
}
