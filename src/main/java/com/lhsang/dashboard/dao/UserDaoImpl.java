package com.lhsang.dashboard.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lhsang.dashboard.model.User;



@Repository
public class UserDaoImpl implements UserDao {
	@Autowired
	SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<User> findAll(){
		return sessionFactory.getCurrentSession().createQuery("from users").getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public User findOneByUsername(String username) {
		return (User) sessionFactory.getCurrentSession().createQuery("from users where username='"+username+"'")
				.getResultList().stream().findFirst().orElse(null);
	}
}
