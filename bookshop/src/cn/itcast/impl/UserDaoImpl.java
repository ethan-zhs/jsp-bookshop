package cn.itcast.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.itcast.dao.UserDao;
import cn.itcast.pojo.Users;

@Transactional
public class UserDaoImpl implements UserDao {
	@Resource private SessionFactory sessionFactory;
	public void save(Users user){
		sessionFactory.getCurrentSession().persist(user);
	}	
	
	public void update(Users user){
		sessionFactory.getCurrentSession().merge(user);
	}	
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public Users getUser(int id){
		return (Users)sessionFactory.getCurrentSession().get(Users.class, id);
	}
	

	public void delete(int id){
		sessionFactory.getCurrentSession().delete(
				sessionFactory.getCurrentSession().load(Users.class, id));
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)	
	@SuppressWarnings("unchecked")
	public List<Users> getUsers(String hql){
		return sessionFactory.getCurrentSession().createQuery(hql).list();
	}
}
