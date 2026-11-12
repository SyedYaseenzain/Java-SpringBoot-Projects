package com.amazon.orders;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Iterator;

public class OrderMgmtPreparedStmt {

	public void updatePayment(String status, int id) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");

		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/kodewala", "root", "Toufiq");

		String updateQuery = "update payment set status=? where id=?";
		PreparedStatement ps = connection.prepareStatement(updateQuery);

		ps.setString(1, status);
		ps.setInt(2, id);

		int recordUpdated = ps.executeUpdate();

		if (recordUpdated > 0) {
			System.out.println("Records updated : " + recordUpdated);
		} else {
			System.out.println("Unable to update the record....");
		}
	}

	public void insertPayment() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");

		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/kodewala", "root", "Toufiq");

		String insertQuery = "insert into payment(id, refid, status) values (?,?,?)";
		PreparedStatement ps = connection.prepareStatement(insertQuery);

		connection.setAutoCommit(false);
		int batchSize = 10;

		for (int i = 10; i < 100; i++) {

			ps.setInt(1, i);
			ps.setString(2, "REF" + i);
			ps.setString(3, "init");
			ps.addBatch();

			if (i % batchSize == 0) {
				System.out.println("Executing the query....");
				ps.executeBatch();
				ps.clearBatch();
			}
		}
		ps.executeBatch();
		connection.commit();
	}

}
