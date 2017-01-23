package cn.itcast.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.itcast.dao.ShopCarDao;
import cn.itcast.pojo.ShopCar;

@Transactional
public class ShopCarDaoImpl implements ShopCarDao{
	@Resource private SessionFactory sessionFactory;
	
	public void save(ShopCar shopCar){
		sessionFactory.getCurrentSession().persist(shopCar);
	}	
	
	
	public void update(ShopCar shopCar){
		sessionFactory.getCurrentSession().merge(shopCar);
	}	
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public ShopCar getShopCar(int id){
		return (ShopCar)sessionFactory.getCurrentSession().get(ShopCar.class, id);
	}
	
	public void delete(int id){
		sessionFactory.getCurrentSession().delete(
				sessionFactory.getCurrentSession().load(ShopCar.class, id));
	}
	
	public void deleteByHql(String hql){
		sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)	
	@SuppressWarnings("unchecked")
	public List<ShopCar> getShopCars(String hql){
		return sessionFactory.getCurrentSession().createQuery(hql).list();
	}
}
