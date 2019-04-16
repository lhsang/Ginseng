package com.lhsang.dashboard.dao;

import java.util.List;

import com.lhsang.dashboard.model.Product;

public interface ProductDao {
	List<Product> findAll(String keyword, Integer categoryID, Integer groupID, Integer offset, Integer maxResults, String order);
	Product findOneById(int id);
	
	void save(Product product);
	Long count(String keyword,Integer categoryID, Integer fromPrice, Integer toPrice);
}
