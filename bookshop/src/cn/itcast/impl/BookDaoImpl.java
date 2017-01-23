package cn.itcast.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.itcast.dao.BookDao;
import cn.itcast.pojo.Books;

@Transactional
public class BookDaoImpl implements BookDao{
	@Resource private SessionFactory sessionFactory;
	
	public void save(Books book){
		sessionFactory.getCurrentSession().persist(book);
	}	
	public void update(Books book){
		sessionFactory.getCurrentSession().merge(book);
	}	
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public Books getBook(int id){
		return (Books)sessionFactory.getCurrentSession().get(Books.class, id);
	}

	public void delete(int id){
		sessionFactory.getCurrentSession().delete(
				sessionFactory.getCurrentSession().load(Books.class, id));
	}	
	public void deleteByHql(String hql){
		sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)	
	@SuppressWarnings("unchecked")
	public List<Books> getBooks(String hql){
		return sessionFactory.getCurrentSession().createQuery(hql).list();
	}
}
