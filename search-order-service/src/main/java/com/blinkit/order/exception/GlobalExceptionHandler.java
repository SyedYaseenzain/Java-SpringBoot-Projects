package com.blinkit.order.exception;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import com.blinkit.order.response.ErrorResponse;

@RestControllerAdvice
public class GlobalExceptionHandler {
	
	@ExceptionHandler(OrderDoesNotExistsException.class)
	public ResponseEntity<ErrorResponse> handleExceptionOrderDoesNotExistsException(OrderDoesNotExistsException e) {
		
		ErrorResponse response = new ErrorResponse();
		
		response.setErrorcode("ER-001");
		response.setMessage(e.getMessage());
		
		return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(response);
	}
	
	@ExceptionHandler(Exception.class)
	public ResponseEntity<ErrorResponse> handleException(Exception e) {
		
		ErrorResponse response = new ErrorResponse();
		
		response.setErrorcode("ER-001");
		response.setMessage(e.getMessage());
		
		return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(response);
	}

}
