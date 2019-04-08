package com.lhsang.dashboard.service;

import java.util.List;

import com.lhsang.dashboard.model.Product;
import com.lhsang.dashboard.model.ProductManage;

public interface ProductService {
	public List<Product> findAll(String keyword, Integer offset, Integer maxResults);
	public Product findOneById(int id);
	public void save(Product product);
}
