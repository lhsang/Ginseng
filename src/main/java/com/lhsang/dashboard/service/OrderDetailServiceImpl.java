package com.lhsang.dashboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lhsang.dashboard.dao.OrderDetailDao;
import com.lhsang.dashboard.model.OrderDetail;

@Transactional
@Service("orderDetailService")
public class OrderDetailServiceImpl implements OrderDetailService{
	@Autowired
	OrderDetailDao orderDetailDao;
	
	public List<OrderDetail> findAll() {
		return orderDetailDao.findAll();
	}
	
	public OrderDetail findOneById(int id) {
		return orderDetailDao.findOneById(id);
	}
	
	public void save(OrderDetail orderDetail) {
		orderDetailDao.save(orderDetail);
	}
}
