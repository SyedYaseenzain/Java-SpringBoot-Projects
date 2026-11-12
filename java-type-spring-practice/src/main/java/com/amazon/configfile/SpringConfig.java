package com.amazon.configfile;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.amazon.customer.Login;

@Configuration
public class SpringConfig {

	@Bean ("acc1")
	public Login accLogin() {
		Login login =  new Login();
		login.setUserName("Zain123");
		login.setEmail("zain@gmail.com");
		login.setPassword("zain@1234");
		
		return login;
	}

}
