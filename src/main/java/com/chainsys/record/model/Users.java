package com.chainsys.record.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="users")
public class Users 
{
	@Id
	 private int user_id;
		private String user_name;
		private String user_password;
		private String first_name;
		private String last_name;
		private Date dob;
		private String e_mail;
		private long phone_number;
		private String gender;
		private String address;

		public int getUser_id() {
			return user_id;
		}

		public void setUser_id(int user_id) {
			this.user_id = user_id;
		}

		public String getUser_name() {
			return user_name;
		}

		public void setUser_name(String user_name) {
			this.user_name = user_name;
		}

		public String getUser_password() {
			return user_password;
		}

		public void setUser_password(String user_password) {
			this.user_password = user_password;
		}

		public String getFirst_name() {
			return first_name;
		}

		public void setFirst_name(String first_name) {
			this.first_name = first_name;
		}

		public String getLast_name() {
			return last_name;
		}

		public void setLast_name(String last_name) {
			this.last_name = last_name;
		}

		public Date getDob() {
			return dob;
		}

		public void setDob(Date dob) {
			this.dob = dob;
		}

		public String getE_mail() {
			return e_mail;
		}

		public void setE_mail(String e_mail) {
			this.e_mail = e_mail;
		}

		public long getPhone_number() {
			return phone_number;
		}

		public void setPhone_number(long phone_number) {
			this.phone_number = phone_number;
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
