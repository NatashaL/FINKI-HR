package mk.ukim.finki.mp.crud.dao;

import java.util.List;

import mk.ukim.finki.mp.crud.model.User;

public interface UserDao {

	
	public User getUser(String mail, String password);
	
	
	
}
