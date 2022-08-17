package com.chainsys.record.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.record.model.Users;

public interface UserRepository extends CrudRepository<Users, Integer> 
{
	Users findById(int id);
	 Users save(Users dr); // used for adding and updating
	    void deleteById(int userid);
	    List<Users> findAll();
	    Users findByUserNameAndUserPassword(String name, String password);
}
