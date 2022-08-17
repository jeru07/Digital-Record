package com.chainsys.record.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.record.model.Documents;
import com.chainsys.record.repository.DocumentRepository;

@Service
public class DocumentService {
	@Autowired
	private DocumentRepository documentRepo;

	public List<Documents> getDocuments() {
		return documentRepo.findAll();
	}

	public Documents save(Documents doc) {
		return documentRepo.save(doc);
	}

	public Documents findByid(int id) {
		return documentRepo.findById(id);
	}

	public void deleteById(int id) {
		documentRepo.deleteById(id);
	}

	public byte[] getDocumentImageByteArray(int id) {
		Documents doc=documentRepo.findById(id);
		byte[] imageBytes = null;
			
			if(doc!=null)
			{
				imageBytes=doc.getDocumentImage();
			}
		return imageBytes;
	}
}
