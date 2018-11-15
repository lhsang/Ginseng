package com.lhsang.dashboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lhsang.dashboard.dao.CategoryDao;
import com.lhsang.dashboard.dao.OrderDao;
import com.lhsang.dashboard.model.Category;
import com.lhsang.dashboard.model.Order;

@Transactional
@Service("orderService")
public class OrderServiceImpl implements OrderService{
	@Autowired
	OrderDao orderDao;
	
	public List<Order> findAll() {
		return orderDao.findAll();
	}
	
	public Order findOneById(int id) {
		return orderDao.findOneById(id);
	}
	
	public void save(Order order) {
		orderDao.save(order);
	}
}
