package com.amazon.orders;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class OrderMgmt {

	public void placeOrder() throws ClassNotFoundException, SQLException {

		Class.forName("com.mysql.cj.jdbc.Driver"); // Load jdbc Driver

		// Creating the connection with the database.
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/kodewala", "root",
				"Toufiq");

		// Creating the statement object.
		try {
			Statement stmt = connection.createStatement();
			
			connection.setAutoCommit(false);

			String createOrderSql = "insert into orders(it, item, status) values (1, 'iphone 18', 'created')";

			int records = stmt.executeUpdate(createOrderSql);

			if (records > 0) {
				System.out.println("Order record created.");
			} else {
				System.out.println("unable to create an order.");
			}
			
			String createPaymentSql = "insert into payment(id, refid, status) values (1, 'PR123', 'init')";
			
			records = stmt.executeUpdate(createPaymentSql);
			if (records > 0) {
				System.out.println("Paymnet order created.");
			}
			else {
				System.out.println("unable to craete payment order.");
			}
			
			String updatePayment = "update payment set status = 'Paid' where id=1";
			
			/*
			 * String name = null; name.length();
			 */
			
			records = stmt.executeUpdate(updatePayment);
			if(records > 0) {
				System.out.println("Payment records updated.");
			}
			else {
				System.out.println("unable to update payment record.");
			}
			
			System.out.println("Doing Commit....");
			connection.commit();
			
		} catch (Exception e) {
			
			
			System.out.println("Exception --- Doing Roll Back......");
			connection.rollback();
		}
		
		
	}
}
