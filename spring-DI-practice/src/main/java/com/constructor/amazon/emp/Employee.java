package com.constructor.amazon.emp;

import com.constructor.amazon.adress.Adress;

public class Employee {
	
	private String salary;
	private String name;
	private Adress adress;
	
	public Employee(String salary, String name, Adress adress) {
		super();
		this.salary = salary;
		this.name = name;
		this.adress = adress;
	}
	
	public void printInfo() {
		adress.diaplayAdressInfo();
	}
	
	
}
