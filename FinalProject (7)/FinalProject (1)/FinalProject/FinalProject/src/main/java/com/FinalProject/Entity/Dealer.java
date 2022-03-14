package com.FinalProject.Entity;

public class Dealer {

	private int dealerId;
	private String name;
	private String emailId;
	private String password;
	private String dob;
	private String gender;
	private String address;
	private String mobileNo;

	public int getDealerId() {
		return dealerId;
	}

	public void setDealerId(int dealerId) {
		this.dealerId = dealerId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmailId() {
		return emailId;
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

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public Dealer(int dealerId, String name, String emailId, String dob, String gender, String address,
			String mobileNo) {
		super();
		this.dealerId = dealerId;
		this.name = name;
		this.emailId = emailId;
		this.dob = dob;
		this.gender = gender;
		this.address = address;
		this.mobileNo = mobileNo;
	}

	public Dealer() {
		super();
	}
}
