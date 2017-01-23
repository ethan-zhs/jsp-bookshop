package cn.itcast.dao;

import java.util.List;


import cn.itcast.pojo.OrderDetail;

public interface OrderDetailDao {

	public abstract void save(OrderDetail orderDetail);

	public abstract void update(OrderDetail orderDetail);

	public abstract OrderDetail getOrderDetail(int id);

	public abstract void delete(int id);

	public abstract List<OrderDetail> getOrderDetails(String hql);

}