package com.lhsang.dashboard.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lhsang.dashboard.model.Role;


@Repository("roleDao")
public class RoleDaoImpl implements RoleDao {

	
	@Autowired
	SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<Role>  findAll() {
		
		Session session=sessionFactory.getCurrentSession();
		String sql="from roles";
		
		return session.createQuery(sql).getResultList();
	}
	
	public Role findOneById(int id) {
		Session session=sessionFactory.getCurrentSession();
		String sql="from roles where id="+String.valueOf(id);
		
		return (Role) session.createQuery(sql).getSingleResult();
	}
	
}
