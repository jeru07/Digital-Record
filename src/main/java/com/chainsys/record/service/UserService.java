package com.chainsys.record.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.record.model.Users;
import com.chainsys.record.repository.UserRepository;


@Service
public class UserService {
	@Autowired
	private UserRepository usrepo;
	
	public List<Users> getUsers() {
		List<Users> listUs=usrepo.findAll();
		return listUs;
	}
	public Users save(Users us)
	{
		return usrepo.save(us);
	}
	public Users findByid(int id)
	{
		return usrepo.findById(id);
	}

	public void deleteById(int id) 
	{
		 usrepo.deleteById(id);
	}
	
}
