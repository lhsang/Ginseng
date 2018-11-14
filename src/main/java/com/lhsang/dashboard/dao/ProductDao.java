package com.lhsang.dashboard.dao;

import java.util.List;

import com.lhsang.dashboard.model.Product;

public interface ProductDao {
	List<Product> findAll(); 
	Product findOneById(int id);
	
	void save(Product product);
}
