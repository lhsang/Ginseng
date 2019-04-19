package com.lhsang.dashboard.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lhsang.dashboard.model.Product;
import com.lhsang.dashboard.model.User;

@Transactional
@Repository("productDao")
public class ProductDaoImpl extends AbstractDao<Integer, Product> implements ProductDao {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@SuppressWarnings({ "unchecked", "deprecation" })
	public List<Product>  findAll(String keyword, Integer categoryID, Integer groupID, Integer fromPrice, Integer toPrice, Integer offset, Integer maxResults, String order) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Product.class);
		
		if(keyword!=null && !keyword.isEmpty())
			criteria.add(Restrictions.like("name","%"+keyword+"%"));
		
		if(categoryID!=null) {
			criteria.createAlias("category", "cate").add(Restrictions.eq("cate.id", categoryID));
		}else {
			if(groupID!=null) {
				criteria.createAlias("category", "cate").createAlias("cate.group", "gr").add(Restrictions.eq("gr.id", groupID));
			}
		}
		
		if(fromPrice != null && toPrice != null) {
			criteria.add(Restrictions.between("price", fromPrice*1000, toPrice*1000));
		}
		
		criteria.setFirstResult(offset!=null?offset:0)
        .setMaxResults(maxResults!=null?maxResults:10);
		
		if(order!=null&&!order.isEmpty()) {
			switch (order) {
				case "increase":	criteria.addOrder(Order.asc("price"));break;
				case "decrease": 	criteria.addOrder(Order.desc("price")); break;
				default: 			criteria.createAlias("productManage", "pro").addOrder(Order.desc("pro.createdAt"));	break;
			}
		}
		return criteria.list();
	}
	
	public Product findOneById(int id) {
		return (Product) sessionFactory.getCurrentSession().get(Product.class, id);
	}
	
	@Override
	public void save(Product product) {
		sessionFactory.getCurrentSession().saveOrUpdate(product);
	}
	
	@SuppressWarnings("deprecation")
	public Long count(String keyword,Integer categoryID, Integer groupID, Integer fromPrice, Integer toPrice) {
		Criteria criteria = (Criteria) sessionFactory.openSession().createCriteria(Product.class);
		
		if(keyword!=null && !keyword.isEmpty()) {
			criteria.add( Restrictions.like("name", "%"+keyword+"%"));
		}
		if(fromPrice!=null && toPrice!=null) {
			criteria.add( Restrictions.between("price", fromPrice*1000, toPrice*1000));
		}
	
		if(categoryID!=null) {
			criteria.createAlias("category", "cate").add(Restrictions.eq("cate.id", categoryID));
		}else {
			if(groupID!=null) {
				criteria.createAlias("category", "cate").createAlias("cate.group", "gr").add(Restrictions.eq("gr.id", groupID));
			}
		}
		
		return (long) criteria.setProjection(Projections.rowCount())
                .uniqueResult();
    }
}
