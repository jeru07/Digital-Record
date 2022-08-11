package com.chainsys.record.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.BufferedImageHttpMessageConverter;
import org.springframework.stereotype.Service;

import com.chainsys.record.commonutil.LogManager;
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
		// doc.getDocumentImage();
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
