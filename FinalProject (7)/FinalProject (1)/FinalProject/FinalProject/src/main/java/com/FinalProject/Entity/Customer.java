package com.FinalProject.Entity;

public class Customer {

	private int custId;
	private String custFName;
	private String custLName;
	private String password;
	private String emailId;
	private String dob;
	private String gender;
	private String address;
	private String mobile;
	
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
	public String getCustFName() {
		return custFName;
	}
	public void setCustFName(String custFName) {
		this.custFName = custFName;
	}
	public String getCustLName() {
		return custLName;
	}
	public void setCustLName(String custLName) {
		this.custLName = custLName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
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
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	public Customer(int custId, String custFName, String custLName, String password, String emailId, String dob,
			String gender, String address, String mobile) {
		super();
		this.custId = custId;
		this.custFName = custFName;
		this.custLName = custLName;
		this.password = password;
		this.emailId = emailId;
		this.dob = dob;
		this.gender = gender;
		this.address = address;
		this.mobile = mobile;
	}
	
	public Customer() {
		super();
	}
	
}
