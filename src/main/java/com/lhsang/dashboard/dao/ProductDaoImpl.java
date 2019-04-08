package com.lhsang.dashboard.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lhsang.dashboard.model.Product;

@Transactional
@Repository("productDao")
public class ProductDaoImpl extends AbstractDao<Integer, Product> implements ProductDao {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@SuppressWarnings({ "unchecked", "deprecation" })
	public List<Product>  findAll(String keyword, Integer offset, Integer maxResults) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Product.class);
		
		if(keyword!=null && !keyword.isEmpty())
			criteria.add(Restrictions.like("name","%"+keyword+"%"));
		
		criteria.setFirstResult(offset!=null?offset:0)
        .setMaxResults(maxResults!=null?maxResults:10);
		return criteria.list();
	}
	
	public Product findOneById(int id) {
		return (Product) sessionFactory.getCurrentSession().get(Product.class, id);
	}
	
	@Override
	public void save(Product product) {
		sessionFactory.getCurrentSession().saveOrUpdate(product);
	}
}
