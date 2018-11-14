package com.lhsang.dashboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lhsang.dashboard.dao.CompanyDao;
import com.lhsang.dashboard.model.Company;


@Transactional
@Service("companyService")
public class CompanyServiceImpl implements CompanyService{
	@Autowired
	CompanyDao companyDao;
	
	public List<Company> findAll() {
		return companyDao.findAll();
	}
	
	public Company findOneById(int id) {
		return companyDao.findOneById(id);
	}
	
	public void save(Company company) {
		companyDao.save(company);
	}


}
