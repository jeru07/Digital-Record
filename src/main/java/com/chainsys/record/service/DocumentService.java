package com.chainsys.record.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.record.model.Documents;
import com.chainsys.record.repository.DocumentRepository;

@Service
public class DocumentService {
	@Autowired
	private DocumentRepository docrepo;
	
	public List<Documents> getDocuments() {
		List<Documents> listdoc=docrepo.findAll();
		return listdoc;
	}
	public Documents save(Documents doc)
	{
		return docrepo.save(doc);
	}
	public Documents findByid(int id)
	{
		return docrepo.findById(id);
	}

	public void deleteById(int id) 
	{
		 docrepo.deleteById(id);
	}
}

	


