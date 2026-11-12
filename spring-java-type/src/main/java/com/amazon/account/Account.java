package com.amazon.account;

public class Account {
	
	private String accHolderName;
	public String getAccHolderName() {
		return accHolderName;
	}
	public void setAccHolderName(String accHolderName) {
		this.accHolderName = accHolderName;
	}
	public String getAccNumber() {
		return accNumber;
	}
	public void setAccNumber(String accNumber) {
		this.accNumber = accNumber;
	}
	public String getAccIfsc() {
		return accIfsc;
	}
	public void setAccIfsc(String accIfsc) {
		this.accIfsc = accIfsc;
	}
	private String accNumber;
	private String accIfsc;
	
	public void accountManager() {
		System.out.println("Account [accHolderName=" + accHolderName + ", accNumber=" + accNumber + ", accIfsc=" + accIfsc + "]");
	}


}
