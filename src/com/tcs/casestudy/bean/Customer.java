package com.tcs.casestudy.bean;
public class Customer {
	int customerSSNId;
	int customerId;
	/**
	 * @return the customerSSNId
	 */
	public int getCustomerSSNId() {
		return customerSSNId;
	}
	/**
	 * @param customerSSNId the customerSSNId to set
	 */
	public void setCustomerSSNId(int customerSSNId) {
		this.customerSSNId = customerSSNId;
	}
	/**
	 * @return the customerId
	 */
	public int getCustomerId() {
		return customerId;
	}
	/**
	 * @param customerId the customerId to set
	 */
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	String customerName;
	int age;
	String addressLine1;
	String addressLine2;
	String city;
	String state;
	
	/**
	 * @param customerSSNId
	 * @param customerId
	 * @param customerName
	 * @param age
	 * @param addressLine1
	 * @param addressLine2
	 * @param city
	 * @param state
	 */
	public Customer(int customerSSNId, int customerId, String customerName, int age, String addressLine1,
			String addressLine2, String city, String state) {
		this.customerSSNId = customerSSNId;
		this.customerId = customerId;
		this.customerName = customerName;
		this.age = age;
		this.addressLine1 = addressLine1;
		this.addressLine2 = addressLine2;
		this.city = city;
		this.state = state;
	}
	
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddressLine1() {
		return addressLine1;
	}
	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}
	public String getAddressLine2() {
		return addressLine2;
	}
	public void setAddressLine2(String addressLine2) {
		this.addressLine2 = addressLine2;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	} 

}
