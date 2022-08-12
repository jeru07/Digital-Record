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
		List<Documents> listdoc = documentRepo.findAll();
		return listdoc;
	}

	public Documents save(Documents doc) {
		return documentRepo.save(doc);
	}

	public Documents findByid(int id) {
		Documents doc = documentRepo.findById(id);
		return doc;
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
			else
			{
				
				System.out.println("debug:"+this.getClass().getName()+" doc is null "+id);
			}	
		return imageBytes;
	}
}
