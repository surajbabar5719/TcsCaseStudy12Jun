package com.tcs.casestudy.bean;

public class Account{
	private int customerId;
	private String accountType;
	private int amount;
	/**
	 * @param customerId
	 * @param accountType
	 * @param amount
	 */
  
	public Account(int customerId, String accountType, int amount) {
		this.customerId = customerId;
		this.accountType = accountType;
		this.amount = amount;
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
	/**
	 * @return the accountType
	 */
	public String getAccountType() {
		return accountType;
	}
	/**
	 * @param accountType the accountType to set
	 */
	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}
	/**
	 * @return the amount
	 */
	public int getAmount() {
		return amount;
	}
	/**
	 * @param amount the amount to set
	 */
	public void setAmount(int amount) {
		this.amount = amount;
	}

	}

