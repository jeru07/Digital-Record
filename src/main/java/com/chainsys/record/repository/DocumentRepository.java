package com.chainsys.record.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.record.pojo.Documents;

public interface DocumentRepository extends CrudRepository<Documents, Integer> {
	Documents findById(int id);
	 Documents save(Documents dr); // used for adding and updating
	    void deleteById(int doc_id);
	    List<Documents> findAll();
	

}
