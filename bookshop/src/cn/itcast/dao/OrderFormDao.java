package cn.itcast.dao;

import java.util.List;

import cn.itcast.pojo.OrderForm;

public interface OrderFormDao {

	public abstract void save(OrderForm orderForm);

	public abstract void update(OrderForm orderForm);

	public abstract OrderForm getOrderForm(int id);

	public abstract void delete(int id);

	public abstract List<OrderForm> getOrderForms(String hql);

}