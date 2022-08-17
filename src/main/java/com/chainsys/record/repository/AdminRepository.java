package com.chainsys.record.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.record.model.Admin;

	public interface AdminRepository extends CrudRepository<Admin, Integer> {
		 Admin findById(int id);
		  Admin save(Admin ad); // used for adding and updating
		    void deleteById(int adid);
		     List<Admin> findAll();
		     Admin findByAdminNameAndPassword(String name, String password);
		     }

		    
	

