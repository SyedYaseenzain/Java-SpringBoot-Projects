package com.amazon.springfile;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.amazon.account.Account;

@Configuration
public class SpringCofig {
	
	
	@Bean ("acc1")
	public Account createAccount() {
		Account account = new Account();
		account.setAccHolderName("Zain....");
		account.setAccNumber("092100839819");
		account.setAccIfsc("CNRB0100822");
		
		return account;
	}

}
