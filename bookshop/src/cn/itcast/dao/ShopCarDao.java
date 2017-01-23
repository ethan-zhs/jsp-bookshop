package cn.itcast.dao;

import java.util.List;

import cn.itcast.pojo.ShopCar;

public interface ShopCarDao {

	public abstract void save(ShopCar shopCar);

	public abstract void update(ShopCar shopCar);

	public abstract ShopCar getShopCar(int id);

	public abstract void delete(int id);
	
	public abstract void deleteByHql(String hql);

	public abstract List<ShopCar> getShopCars(String hql);

}