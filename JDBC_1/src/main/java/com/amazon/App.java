package com.amazon;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {

PaymentService paymentService = new PaymentService();
try {
paymentService.getAllPayment("failed");
    }
catch (Exception e) {
}
}
}
