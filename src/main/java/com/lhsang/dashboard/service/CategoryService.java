package com.lhsang.dashboard.service;

import java.util.List;

import com.lhsang.dashboard.model.Category;
public interface CategoryService {
	
	public List<Category> findAll();
	public Category findOneById(int id);
	public void save(Category category);
}	
