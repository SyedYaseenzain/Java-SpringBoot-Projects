package com.amazon;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.amazon.config.SpringConfig;
import com.amazon.setter.emp.Employee;


/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(SpringConfig.class);
        
        Employee e1 =  (Employee) context.getBean("emp2");
        e1.printInfo();
        context.close();
        
    }
}
