package com.chainsys.record.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


@Entity
@Table(name="users")
public class Users 
{
	
	@Id
	@Column(name="user_id")
	@Min(value = 1,message="Enter a valid Id between 1 to 100")
	@Max(value = 100,message="Enter a valid Id between 1 to 100")
	 private int userId;
	@Column(name="user_name")
	@NotNull(message="Username is required")
		private String userName;
	@Column(name="user_password")
	@Size(max = 20, min = 8, message = "*Password length should be 8 to 20")
//    @Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "pattern:Welcome@12")
	@NotNull(message="Password is required")
		private String userPassword;
	@Column(name="first_name")
	@NotNull(message="Firstname is required")
		private String firstName;
	@Column(name="last_name")
	@NotNull(message="Lastname is required")
		private String lastName;
	@Column(name="dob")
	@NotNull(message="Correct date format is required ")
		private Date dateOfBirth;
	@Column(name="e_mail")
	@Email(regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}")
		private String eMail;
	@Column(name="phone_number")
	@Digits(integer = 10, fraction = 0)
		private long phoneNumber;
	@Column(name="gender")
	@NotNull(message="Gender is required")
		private String gender;
	@Column(name="address")
	@NotNull(message="Address is required")
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
