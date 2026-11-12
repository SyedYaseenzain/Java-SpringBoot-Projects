package com.amazon.bean;

public class Payment {
	
	private String refID;

	public String getRefID() {
		return refID;
	}

	public void setRefID(String refID) {
		this.refID = refID;
	}
	
	
	public void showDetails() {
		System.out.println("Ref ID : " + refID);
	}

}
