package com.lhsang.dashboard.dao;

import java.util.List;

import com.lhsang.dashboard.model.ProductManage;


public interface ProductManageDao {
	List<ProductManage> findAll(Integer offset, Integer maxResults); 
	ProductManage findOneById(int id);
	
	void save(ProductManage productManage);
}
