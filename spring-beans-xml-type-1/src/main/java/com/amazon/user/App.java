package com.amazon.user;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.amazon.user.beans.User;

public class App 
{
    public static void main( String[] args )
    {
        String configFile = "com/amazon/user/beans.xml";
        
        ApplicationContext context = new ClassPathXmlApplicationContext(configFile);
        
        User user = (User) context.getBean("acc");
        
        user.setUserName("test-user1");
        user.setType("local");
        user.setLocation("Banglore");
        
        user.displayUserInfo();
    }
}
