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
		File file = null;
		FileInputStream fileinstream = null;

		byte[] imageBytes = null;
		try {
			
			if(doc!=null)
			{
				file=doc.getDocumentImage();
			}
			else
			{
				
				System.out.println("debug:"+this.getClass().getName()+" doc is null "+id);
			}
			
			if(file!=null) {
			System.out.println(file.length());
			  fileinstream = new FileInputStream(file);
			int readbytes=fileinstream.read(imageBytes);
			System.out.println("debug:"+this.getClass().getName()+" read bytes="+readbytes);
			}
			else 
			{
				System.out.println("debug:"+this.getClass().getName()+" file is null ");
			}
			
		} catch (FileNotFoundException fe) {
			//LogManager.logException(fe, this.getClass().getName());
			fe.printStackTrace();
		} catch (IOException e) {
            e.printStackTrace();
			//LogManager.logException(e, this.getClass().getName());
		}

		finally {
			try {
				if (fileinstream != null)
					fileinstream.close();
			} catch (IOException e) {
				LogManager.logException(e, this.getClass().getName());
			}
		}
		return imageBytes;
	}
}
