package com.chainsys.record.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.record.model.Documents;
import com.chainsys.record.model.Users;

public class UsersDocumentsDTO {
	@Autowired
	private Users users;
	private List<Documents> doclist=new ArrayList<Documents>();
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	public List<Documents> getDoclist() {
		return doclist;
	}
	public void addDocuments(Documents documents)
	{
		doclist.add(documents);
	}

}
