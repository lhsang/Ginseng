package com.lhsang.dashboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lhsang.dashboard.dao.ProductDao;
import com.lhsang.dashboard.model.Product;
import com.lhsang.dashboard.model.ProductManage;

@Transactional
@Service("productService")
public class ProductSeviceImpl implements ProductService{
	@Autowired
	ProductDao productDao;
	
	public List<Product> findAll() {
		return productDao.findAll();
	}
	
	public Product findOneById(int id) {
		return productDao.findOneById(id);
	}
	
	public void save(Product product) {
		productDao.save(product);
	}

}
