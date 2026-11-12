package com.kodewala.jdbc;

import java.sql.SQLException;

public class App
{
	public static void main(String[] args)
	{
		PaymentService paymentService = new PaymentService();
		try
		{
			//paymentService.getAllPayments(null);
			paymentService.updatePaymentStatus(10045, "on-hold");
			System.err.println();
			
		} catch (ClassNotFoundException | SQLException e)
		{
			
			e.printStackTrace();
		}
	}
}
