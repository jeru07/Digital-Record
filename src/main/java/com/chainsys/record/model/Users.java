package com.chainsys.record.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name="users")
public class Users 
{
	
	@Id
	@Column(name="user_id")
	    private int userId;
	@Column(name="user_name")
		private String userName;
	@Column(name="user_password")
		private String userPassword;
	@Column(name="first_name")
		private String firstName;
	@Column(name="last_name")
		private String lastName;
	@Column(name="dob")
		private Date dateOfBirth;
	@Column(name="e_mail")
		private String eMail;
	@Column(name="phone_number")
		private long phoneNumber;
	@Column(name="gender")
		private String gender;
	@Column(name="address")
		private String address;
	
	@OneToMany(mappedBy="users",fetch= FetchType.LAZY )
	private List<Documents> documents;
	
		public List<Documents> getDocuments() {
		return documents;
	}
	public void setDocuments(List<Documents> documents) {
		this.documents = documents;
	}
		public int getUserId() {
			return userId;
		}
		public void setUserId(int userId) {
			this.userId = userId;
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getUserPassword() {
			return userPassword;
		}
		public void setUserPassword(String userPassword) {
			this.userPassword = userPassword;
		}
		public String getFirstName() {
			return firstName;
		}
		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}
		public String getLastName() {
			return lastName;
		}
		public void setLastName(String lastName) {
			this.lastName = lastName;
		}
		public Date getDateOfBirth() {
			return dateOfBirth;
		}
		public void setDateOfBirth(Date dateOfBirth) {
			this.dateOfBirth = dateOfBirth;
		}
		public String geteMail() {
			return eMail;
		}
		public void seteMail(String eMail) {
			this.eMail = eMail;
		}
		public long getPhoneNumber() {
			return phoneNumber;
		}
		public void setPhoneNumber(long phoneNumber) {
			this.phoneNumber = phoneNumber;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
}
