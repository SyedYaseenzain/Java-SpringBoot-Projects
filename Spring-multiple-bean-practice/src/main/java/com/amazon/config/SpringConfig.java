package com.amazon.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Component;

import com.amazon.payment.Payment;

@Configuration
@ComponentScan (basePackages = "com.amazon")
public class SpringConfig {
	
	@Bean ("upi")
	@Primary
	public Payment upi() {
		return new Payment("REF-UPI-1234");
	}
	
	
	@Bean ("card")
	public Payment card() {
		return new Payment("REF-CARD-4567");
	}
}
