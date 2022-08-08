package com.chainsys.record.repository;

import java.sql.Blob;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.record.model.Documents;

import oracle.sql.BLOB;

public interface DocumentRepository extends CrudRepository<Documents, Integer> {
	 Documents findById(int id);
	  Documents save(Documents doc); // used for adding and updating
	    void deleteById(int doc_id);
	     List<Documents> findAll();
	     List<Documents> findByUserId(int id);
	     Blob findDocumentImageByUserId(int id);
}
