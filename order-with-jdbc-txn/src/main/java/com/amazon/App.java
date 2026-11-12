package com.amazon;
import java.sql.SQLException;

import com.amazon.orders.*;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
    	 OrderMgmt mgmt = new OrderMgmt();
    	 try {
			//mgmt.placeOrder();
    		 
    		 OrderMgmtPreparedStmt mgmtPreparedStmt = new OrderMgmtPreparedStmt();
    		 //mgmtPreparedStmt.updatePayment("BLOCKED", 1);
    		 
    		 mgmtPreparedStmt.insertPayment();
    		 
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
}
