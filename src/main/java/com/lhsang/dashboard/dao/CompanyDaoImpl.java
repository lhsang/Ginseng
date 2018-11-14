package com.lhsang.dashboard.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lhsang.dashboard.model.Company;

@Transactional
@Repository("companyDao")
public class CompanyDaoImpl extends AbstractDao<Integer, Company> implements CompanyDao {

	
	@Autowired
	SessionFactory sessionFactory;
	
	@SuppressWarnings({ "unchecked", "deprecation" })
	public List<Company>  findAll() {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Company.class);
		return criteria.list();
	}
	
	public Company findOneById(int id) {
		return (Company) sessionFactory.getCurrentSession().get(Company.class, id);
	}
	
	@Override
	public void save(Company company) {
		sessionFactory.getCurrentSession().saveOrUpdate(company);
	}
}

