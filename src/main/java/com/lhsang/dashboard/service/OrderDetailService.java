package com.lhsang.dashboard.service;

import java.util.List;

import com.lhsang.dashboard.model.OrderDetail;
public interface OrderDetailService {
	
	public List<OrderDetail> findAll();
	public OrderDetail findOneById(int id);
	public void save(OrderDetail orderDetail);
}	
