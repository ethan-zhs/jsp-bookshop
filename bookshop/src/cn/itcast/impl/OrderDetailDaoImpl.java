package cn.itcast.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.itcast.dao.OrderDetailDao;
import cn.itcast.pojo.OrderDetail;



@Transactional
public class OrderDetailDaoImpl implements OrderDetailDao{
	@Resource private SessionFactory sessionFactory;
	
	public void save(OrderDetail orderDetail){
		sessionFactory.getCurrentSession().persist(orderDetail);
	}	
	
	
	public void update(OrderDetail orderDetail){
		sessionFactory.getCurrentSession().merge(orderDetail);
	}	
	
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public OrderDetail getOrderDetail(int id){
		return (OrderDetail)sessionFactory.getCurrentSession().get(OrderDetail.class, id);
	}
	
	public void delete(int id){
		sessionFactory.getCurrentSession().delete(
				sessionFactory.getCurrentSession().load(OrderDetail.class, id));
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)	
	@SuppressWarnings("unchecked")
	public List<OrderDetail> getOrderDetails(String hql){
		return sessionFactory.getCurrentSession().createQuery(hql).list();
	}
}
