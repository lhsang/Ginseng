package com.lhsang.dashboard.service;

import java.util.List;

import com.lhsang.dashboard.model.ProductManage;

public interface ProductManageSevice {
	public List<ProductManage> findAll(Integer offset, Integer maxResults);
	public ProductManage findOneById(int id);
	public void save(ProductManage productManage);
}
