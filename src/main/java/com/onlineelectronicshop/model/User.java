package com.onlineelectronicshop.model;

import java.util.Objects;

public class User {
	private String userName;
	private String emailId;
	private String password;
	private Long contactNumber;
	private String address;
	private String role;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getEmailId() {
		return emailId;
	}
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Long getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(Long contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public User(String userName, String emailId, String password, Long contactNumber, String address) {
		super();
		this.userName = userName;
		this.emailId = emailId;
		this.password = password;
		this.contactNumber = contactNumber;
		this.address = address;
	}
	public User(String userName, String emailId, String password, Long contactNumber, String address,String role) {
		super();
		this.userName = userName;
		this.emailId = emailId;
		this.password = password;
		this.contactNumber = contactNumber;
		this.address = address;
		this.role=role;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "User [userName=" + userName + ", emailId=" + emailId + ", password=" + password + ", contactNumber="
				+ contactNumber + ", address=" + address + "]";
	}
	@Override
	public int hashCode() {
		return Objects.hash(address, contactNumber, emailId, password, userName);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		return Objects.equals(address, other.address) && Objects.equals(contactNumber, other.contactNumber)
				&& Objects.equals(emailId, other.emailId) && Objects.equals(password, other.password)
				&& Objects.equals(userName, other.userName);
	}
	
	
}
