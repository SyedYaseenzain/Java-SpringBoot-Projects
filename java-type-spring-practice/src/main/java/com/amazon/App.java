package com.amazon;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.amazon.configfile.SpringConfig;
import com.amazon.configfile.SpringConfigAnnotation;
import com.amazon.customer.Login;
import com.amazon.customer.Payment;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
    	ApplicationContext context = new AnnotationConfigApplicationContext(SpringConfigAnnotation.class);
    	
    	Payment payment = context.getBean(Payment.class);
    	
    	payment.makePayment();
    	
    	Login login = context.getBean(Login.class);
    	
    	login.customerLogin();
    }
}
