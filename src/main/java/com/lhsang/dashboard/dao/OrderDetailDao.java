package com.lhsang.dashboard.dao;

import java.util.List;

import com.lhsang.dashboard.model.Category;
import com.lhsang.dashboard.model.OrderDetail;

public interface OrderDetailDao {
	List<OrderDetail> findAll(); 
	OrderDetail findOneById(int id);
	
	void save(OrderDetail orderDetail);
}
