package com.lhsang.dashboard.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lhsang.dashboard.model.Category;
import com.lhsang.dashboard.model.OrderDetail;

@Transactional
@Repository("orderDetailDao")
public class OrderDetailDaoImpl extends AbstractDao<Integer, OrderDetail> implements OrderDetailDao{
	
	@Autowired
	SessionFactory sessionFactory;
	
	@SuppressWarnings({ "unchecked", "deprecation" })
	public List<OrderDetail>  findAll() {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(OrderDetail.class);
		return criteria.list();
	}
	
	public OrderDetail findOneById(int id) {
		return (OrderDetail) sessionFactory.getCurrentSession().get(OrderDetail.class, id);
	}
	
	@Override
	public void save(OrderDetail orderDetail) {
		sessionFactory.getCurrentSession().saveOrUpdate(orderDetail);
	}
}


