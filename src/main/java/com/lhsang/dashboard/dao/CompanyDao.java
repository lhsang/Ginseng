package com.lhsang.dashboard.dao;

import java.util.List;

import com.lhsang.dashboard.model.Company;

public interface CompanyDao {
	List<Company> findAll(); 
	Company findOneById(int id);
	
	void save(Company company);
}
