package com.amazon.account.beans;

public class Account {
	
	private String name;
	private String type;
	private int amount;
	
	public void manageAccount() {
		System.out.println("Account [name=" + name + ", type=" + type + ", amount=" + amount + "]");
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}


}
