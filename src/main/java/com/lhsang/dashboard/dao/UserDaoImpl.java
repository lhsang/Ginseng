package com.lhsang.dashboard.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.expression.spel.ast.Projection;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lhsang.dashboard.model.Role;
import com.lhsang.dashboard.model.User;


@Transactional
@Repository
public class UserDaoImpl  extends AbstractDao<Integer, User>  implements UserDao {
	@Autowired
	SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<User> findAll(Integer offset, Integer maxResults){	
		@SuppressWarnings("deprecation")
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(User.class);
	
		criteria.setFirstResult(offset!=null?offset:0)
        .setMaxResults(maxResults!=null?maxResults:10);
		
		criteria.add(Restrictions.ne("status", -1));
		
		return criteria.list();
	}
	
	@SuppressWarnings("unchecked")
	public User findOneByUsername(String username) {
		return (User) sessionFactory.getCurrentSession().createQuery("from users where username='"+username+"'")
				.getResultList().stream().findFirst().orElse(null);
	}
	
	
	@Override
	public void save(User user) {
		sessionFactory.getCurrentSession().saveOrUpdate(user);
	}
	
	@SuppressWarnings("deprecation")
	public Long count() {
        return (Long)sessionFactory.openSession()
                .createCriteria(User.class)
                .setProjection(Projections.rowCount())
                .uniqueResult();
    }
}
