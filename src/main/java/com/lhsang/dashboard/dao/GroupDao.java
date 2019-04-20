package com.lhsang.dashboard.dao;

import java.util.List;

import com.lhsang.dashboard.model.Group;

public interface GroupDao {
	List<Group> findAll(); 
	Group findOneById(int id);
	void save(Group group);
}
