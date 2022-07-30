package com.chainsys.record.pojo;

import java.io.File;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class Documents {
	@Id
   private int user_id;
   private String document_name;
   private int document_id;
   private Date issue_date;
   private Date valid_till;
   private String issued_by;
   private String notes;
   private File document_image;
   
public int getUser_id() {
	return user_id;
}
public void setUser_id(int user_id) {
	this.user_id = user_id;
}
public String getDocument_name() {
	return document_name;
}
public void setDocument_name(String document_name) {
	this.document_name = document_name;
}
public int getDocument_id() {
	return document_id;
}
public void setDocument_id(int document_id) {
	this.document_id = document_id;
}
public Date getIssue_date() {
	return issue_date;
}
public void setIssue_date(Date issue_date) {
	this.issue_date = issue_date;
}
public Date getValid_till() {
	return valid_till;
}
public void setValid_till(Date valid_till) {
	this.valid_till = valid_till;
}
public String getIssued_by() {
	return issued_by;
}
public void setIssued_by(String issued_by) {
	this.issued_by = issued_by;
}
public String getNotes() {
	return notes;
}
public void setNotes(String notes) {
	this.notes = notes;
}
public File getDocument_image() {
	return document_image;
}
public void setDocument_image(File document_image) {
	this.document_image = document_image;
}
   
}
