package com.amazon.account;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.amazon.account.beans.Account;

public class App 
{
    public static void main( String[] args )
    {

    	String confiqFile = "com/amazon/account/beans/beans.xml";
    	
    	ApplicationContext context = new ClassPathXmlApplicationContext(confiqFile);
    	
    	Account account = (Account) context.getBean("acc");
    	
    	account.setName("Zain.....");
    	account.setType("Savings");
    	account.setAmount(500000);
    	
    	account.manageAccount();
    }
}
