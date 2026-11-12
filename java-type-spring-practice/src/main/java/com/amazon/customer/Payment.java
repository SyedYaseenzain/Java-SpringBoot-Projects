package com.amazon.customer;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class Payment {
	
	
	@Value ("PRF123789")
	private String paymentId;
	
	public void makePayment() {
		System.out.println("Payment.makePayment()........ : " + paymentId);
	}
}
