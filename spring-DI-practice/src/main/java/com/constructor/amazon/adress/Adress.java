package com.constructor.amazon.adress;

public class Adress {
	
	private String line1;
	public Adress(String line1, String line2, String city, String state) {
		super();
		this.line1 = line1;
		this.line2 = line2;
		this.city = city;
		this.state = state;
	}
	
	private String line2;
	private String city;
	private String state;
	
	public void diaplayAdressInfo() {
		System.out.println( "Adreess [line1=" + line1 + ", line2=" + line2 + ", city=" + city + ", state=" + state + "]");
	
	}
}
