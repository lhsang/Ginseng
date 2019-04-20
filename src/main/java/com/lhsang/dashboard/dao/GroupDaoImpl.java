package com.lhsang.dashboard.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lhsang.dashboard.model.Group;
import com.lhsang.dashboard.model.Role;



@Transactional
@Repository("groupDao")
public class GroupDaoImpl extends AbstractDao<Integer, Group> implements GroupDao {

	
	@Autowired
	SessionFactory sessionFactory;
	
	@SuppressWarnings({ "unchecked", "deprecation" })
	public List<Group>  findAll() {
		
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Group.class);
		return criteria.list();
	}
	
	public Group findOneById(int id) {
		return (Group) sessionFactory.getCurrentSession().get(Group.class, id);
	}
	
	@Override
	public void save(Group group) {
		sessionFactory.getCurrentSession().saveOrUpdate(group);
	}
}
