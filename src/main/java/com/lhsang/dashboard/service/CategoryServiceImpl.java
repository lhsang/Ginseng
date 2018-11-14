package com.lhsang.dashboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lhsang.dashboard.dao.CategoryDao;
import com.lhsang.dashboard.model.Category;

@Transactional
@Service("categoryService")
public class CategoryServiceImpl implements CategoryService{
	@Autowired
	CategoryDao categoryDao;
	
	public List<Category> findAll() {
		return categoryDao.findAll();
	}
	
	public Category findOneById(int id) {
		return categoryDao.findOneById(id);
	}
	
	public void save(Category category) {
		categoryDao.save(category);
	}
}
