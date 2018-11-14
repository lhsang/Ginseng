package com.lhsang.dashboard.service;

import java.util.List;

import com.lhsang.dashboard.model.Company;

public interface CompanyService {
	public List<Company> findAll();
	public Company findOneById(int id);
	public void save(Company company);
}
