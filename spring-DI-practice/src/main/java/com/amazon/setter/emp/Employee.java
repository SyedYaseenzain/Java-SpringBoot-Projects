package com.amazon.setter.emp;

import org.springframework.beans.factory.annotation.Autowired;

import com.amazon.setter.adress.Address;

import jakarta.annotation.PostConstruct;
import jakarta.annotation.PreDestroy;

public class Employee {
	
	private String salary;
	private String name;
	
	private Address address;
	
	public Employee(String salary, String name) {
		super();
		
		System.out.println("1. Employee.Employee() - constructor.");
		this.salary = salary;
		this.name = name;
	}
		
	
	  public void setAddress(Address _address) { 
		  System.out.println("2. Employee.Employee() - Dependency Injection.");
		  this.address = _address; 
		  }
	 
	
	public void printInfo() {
		System.out.println("4. Employee.Employee() - Doing Work.");
		address.diaplayAdressInfo();
	}
	
	@PostConstruct
	public void init() {
		System.out.println("3. Employee.Employee() - init.");
	}
	
	@PreDestroy
	public void cleanUp() {
		System.out.println("5. Employee.Employee() - doing cleanup before Destroy.");
	}
	
	
}
