package com.chainsys.record.model;

import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
//import org.springframework.web.multipart.MultipartFile;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
@Entity
public class Documents {
	
	@Column(name="user_id")
        private int userId;
	@Column(name="document_name")
	@NotNull(message="Documentname is required")
		private String documentName;
	@Id
	@Column(name="document_id")
	@Digits(integer = 100, fraction = 0)
		private int documentId;
	@Column(name="issue_date")
	@NotNull(message="Correct date format is required ")
		private Date issueDate;
	@Column(name="valid_till")
	@NotNull(message="Correct date format is required ")
		private Date validTill;
	@Column(name="issued_by")
	@NotNull(message="IssuedBy is required")
		private String issuedBy;
	@Column(name="notes")
		private String notes;
	@Column(name="document_image")
	@NotNull(message="Image is required")
		private byte[] documentImage;
	
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
	public byte[] getDocumentImage() {
		return documentImage;
	}
	public void setDocumentImage(byte[] documentImage) {
		this.documentImage = documentImage;
	}
}
