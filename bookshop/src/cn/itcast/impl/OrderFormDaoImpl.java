package cn.itcast.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.itcast.dao.OrderFormDao;
import cn.itcast.pojo.OrderForm;


@Transactional
public class OrderFormDaoImpl implements OrderFormDao{
	@Resource private SessionFactory sessionFactory;
	
	public void save(OrderForm orderForm){
		sessionFactory.getCurrentSession().persist(orderForm);
	}	
	
	public void update(OrderForm orderForm){
		sessionFactory.getCurrentSession().merge(orderForm);
	}	
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public OrderForm getOrderForm(int id){
		return (OrderForm)sessionFactory.getCurrentSession().get(OrderForm.class, id);
	}
	
	public void delete(int id){
		sessionFactory.getCurrentSession().delete(
				sessionFactory.getCurrentSession().load(OrderForm.class, id));
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)	
	@SuppressWarnings("unchecked")
	public List<OrderForm> getOrderForms(String hql){
		return sessionFactory.getCurrentSession().createQuery(hql).list();
	}
}
