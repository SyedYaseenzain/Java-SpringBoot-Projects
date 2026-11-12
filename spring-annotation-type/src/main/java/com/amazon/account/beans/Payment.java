package com.amazon.account.beans;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;


@Component
public class Payment {
	
	@Value ("PRF12345")
	private String paymentRef;
	public void showPayment() {
		System.out.println("Payment.showPayment()........." + paymentRef);
	}

}
