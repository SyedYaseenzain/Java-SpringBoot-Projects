package com.amazon.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.amazon.setter.adress.Address;
import com.amazon.setter.emp.*;
//import com.constructor.amazon.adress.Adress;
//import com.constructor.amazon.emp.Employee;

@Configuration
public class SpringConfig {

	@Bean
	public Address adress() {
		Address adress = new Address("9th main", "2nt cross", "Banglore", "Karnatka");
		return adress;
	}

	// 1.Constructor
//	@Bean ("emp1")
//	public Employee employee(Adress adress) {
//		Employee employee = new Employee("120000", "Zain....", adress);
//		return employee;
//	}

	
	
	  //2.Setter
	  
	  @Bean ("emp2") public Employee employee(Address address) { 
		  Employee employee = new Employee("120000", "Zain"); 
		  employee.setAddress(address); 
		  return employee; 
		  }
	 
	 
	
//	//3.AutoWire
//	@Bean ("emp2") 
//	 public Employee employee(Address address) { 
//		 Employee employee= new Employee("120000", "Zain"); 
//		 return employee; 
//		 }

}
