package com.lhsang.dashboard.dao;

import java.util.List;

import com.lhsang.dashboard.model.Company;
import com.lhsang.dashboard.model.Order;

public interface OrderDao {
	List<Order> findAll(); 
	Order findOneById(int id);
	
	void save(Order order);
}
