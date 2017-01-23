package cn.itcast.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.itcast.dao.SaleUserDao;
import cn.itcast.pojo.SaleUsers;

@Transactional
public class SaleUserDaoImpl implements SaleUserDao{
	@Resource private SessionFactory sessionFactory;
	
	public void save(SaleUsers saleUsers){
		sessionFactory.getCurrentSession().persist(saleUsers);
	}	
	

	public void update(SaleUsers saleUsers){
		sessionFactory.getCurrentSession().merge(saleUsers);
	}	
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public SaleUsers getSaleUser(int id){
		return (SaleUsers)sessionFactory.getCurrentSession().get(SaleUsers.class, id);
	}
	

	public void delete(int id){
		sessionFactory.getCurrentSession().delete(
				sessionFactory.getCurrentSession().load(SaleUsers.class, id));
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)	
	@SuppressWarnings("unchecked")
	public List<SaleUsers> getSaleUsers(String hql){
		return sessionFactory.getCurrentSession().createQuery(hql).list();
	}
}
