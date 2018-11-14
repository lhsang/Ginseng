package com.lhsang.dashboard.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lhsang.dashboard.model.ProductManage;

@Transactional
@Repository("productManageDao")
public class ProductManageDaoImpl extends AbstractDao<Integer, ProductManage> implements ProductManageDao{
	
	@Autowired
	SessionFactory sessionFactory;
	
	@SuppressWarnings({ "unchecked", "deprecation" })
	public List<ProductManage>  findAll() {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(ProductManage.class);
		return criteria.list();
	}
	
	public ProductManage findOneById(int id) {
		return (ProductManage) sessionFactory.getCurrentSession().get(ProductManage.class, id);
	}
	
	@Override
	public void save(ProductManage productManage) {
		sessionFactory.getCurrentSession().saveOrUpdate(productManage);
	}
}

