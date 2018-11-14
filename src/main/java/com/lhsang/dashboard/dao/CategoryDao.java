package com.lhsang.dashboard.dao;

import java.util.List;

import com.lhsang.dashboard.model.Category;

public interface CategoryDao {
	List<Category> findAll(); 
	Category findOneById(int id);
	
	void save(Category category);
}
