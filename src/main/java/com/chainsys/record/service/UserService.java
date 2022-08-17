package com.chainsys.record.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.record.dto.UsersDocumentsDTO;
import com.chainsys.record.model.Documents;
import com.chainsys.record.model.Users;
import com.chainsys.record.repository.DocumentRepository;
import com.chainsys.record.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository userRepo;
	@Autowired
	private DocumentRepository documentRepo;

	public List<Users> getUsers() {
		return userRepo.findAll();
	}

	public Users save(Users us) {
		return userRepo.save(us);
	}

	public Users findByid(int id) {
		return userRepo.findById(id);
	}

	public void deleteById(int id) {
		userRepo.deleteById(id);
	}

	public UsersDocumentsDTO getUserDocument(int id) {
		Users us = findByid(id);
		UsersDocumentsDTO dto = new UsersDocumentsDTO();
		dto.setUsers(us);
		List<Documents> documents = documentRepo.findByUserId(id);
		Iterator<Documents> itr = documents.iterator();
		while (itr.hasNext()) {
			dto.addDocuments(itr.next());
		}
		return dto;
	}

	public Users getUserByuserNameAnduserPassword(String name, String password) {
		return userRepo.findByUserNameAndUserPassword(name, password);
	}
}
