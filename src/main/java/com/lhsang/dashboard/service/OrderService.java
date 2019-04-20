package com.lhsang.dashboard.service;

import java.util.List;

import com.lhsang.dashboard.model.Order;
public interface OrderService {
	
	public List<Order> findAll();
	public Order findOneById(int id);
	
	public List<Order> findByUserId(int id);
	public void save(Order order);
}	
