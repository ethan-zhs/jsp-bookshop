package cn.itcast.dao;

import java.util.List;


import cn.itcast.pojo.SaleUsers;

public interface SaleUserDao {

	public abstract void save(SaleUsers saleUsers);

	public abstract void update(SaleUsers saleUsers);

	public abstract SaleUsers getSaleUser(int id);

	public abstract void delete(int id);

	public abstract List<SaleUsers> getSaleUsers(String hql);

}