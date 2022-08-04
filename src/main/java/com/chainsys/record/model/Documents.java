package com.chainsys.record.model;

import java.io.File;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
@Entity
public class Documents {
	
	@Column(name="user_id")
        private int userId;
	@Column(name="document_name")
		private String documentName;
	@Id
	@Column(name="document_id")
		private int documentId;
	@Column(name="issue_date")
		private Date issueDate;
	@Column(name="valid_till")
		private Date validTill;
	@Column(name="issued_by")
		private String issuedBy;
	@Column(name="notes")
		private String notes;
	@Column(name="document_image")
		private File documentImage;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="user_id" , nullable=false,insertable=false,updatable=false)
	private Users users;
	
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getDocumentName() {
		return documentName;
	}
	public void setDocumentName(String documentName) {
		this.documentName = documentName;
	}
	public int getDocumentId() {
		return documentId;
	}
	public void setDocumentId(int documentId) {
		this.documentId = documentId;
	}
	public Date getIssueDate() {
		return issueDate;
	}
	public void setIssueDate(Date issueDate) {
		this.issueDate = issueDate;
	}
	public Date getValidTill() {
		return validTill;
	}
	public void setValidTill(Date validTill) {
		this.validTill = validTill;
	}
	public String getIssuedBy() {
		return issuedBy;
	}
	public void setIssuedBy(String issuedBy) {
		this.issuedBy = issuedBy;
	}
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}
	public File getDocumentImage() {
		return documentImage;
	}
	public void setDocumentImage(File documentImage) {
		this.documentImage = documentImage;
	}
}