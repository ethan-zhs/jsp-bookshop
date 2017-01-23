package cn.itcast.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.itcast.dao.BookListDetailDao;
import cn.itcast.pojo.BookListDetail;

@Transactional
public class BookListDetailImpl implements BookListDetailDao{
	@Resource private SessionFactory sessionFactory;
	private Session session;
	
	public void save(BookListDetail bookListDetail){
		sessionFactory.getCurrentSession().persist(bookListDetail);
	}	
	
	
	public void update(BookListDetail bookListDetail){
		sessionFactory.getCurrentSession().merge(bookListDetail);
	}	
	
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public BookListDetail getBookListDetail(int id){
		return (BookListDetail)sessionFactory.getCurrentSession().get(BookListDetail.class, id);
	}

	
	public void delete(int id){
		sessionFactory.getCurrentSession().delete(
				sessionFactory.getCurrentSession().load(BookListDetail.class, id));
	}	
	
	public void deleteByHql(String hql){
		sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
	}
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)	
	@SuppressWarnings("unchecked")
	public List<BookListDetail> getBookListDetails(String hql){
		session=sessionFactory.openSession();		
		return session.createQuery(hql).list();
	}
}
