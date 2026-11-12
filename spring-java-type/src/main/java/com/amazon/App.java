package com.amazon;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.amazon.account.Account;
import com.amazon.springfile.SpringCofig;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        ApplicationContext context = new AnnotationConfigApplicationContext(SpringCofig.class);
        Account account = (Account) context.getBean("acc1");
        account.accountManager();
    }
}
