package com.blinkit.order.exception;

public class OrderDoesNotExistsException extends RuntimeException 
{
	public OrderDoesNotExistsException(String _message) {
		super(_message);
	}
}
