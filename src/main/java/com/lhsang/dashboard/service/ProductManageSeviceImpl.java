package com.lhsang.dashboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lhsang.dashboard.dao.ProductManageDao;
import com.lhsang.dashboard.model.ProductManage;


@Transactional
@Service("productManageService")
public class ProductManageSeviceImpl implements ProductManageSevice{
	
	@Autowired
	ProductManageDao productManageDao;
	
	public List<ProductManage> findAll(Integer offset, Integer maxResults) {
		return productManageDao.findAll(offset, maxResults);
	}
	
	public ProductManage  findOneById(int id) {
		return productManageDao.findOneById(id);
	}
	
	public void save(ProductManage productManage) {
		productManageDao.save(productManage);
	}


}
