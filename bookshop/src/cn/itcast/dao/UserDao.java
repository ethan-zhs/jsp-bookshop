package cn.itcast.dao;

import java.util.List;

import cn.itcast.pojo.Users;

public interface UserDao {

	public abstract void save(Users user);

	public abstract void update(Users user);

	public abstract Users getUser(int id);

	public abstract void delete(int id);

	public abstract List<Users> getUsers(String hql);

}