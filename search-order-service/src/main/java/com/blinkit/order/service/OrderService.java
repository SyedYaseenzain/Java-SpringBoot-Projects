package com.blinkit.order.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blinkit.order.entity.OrderEntity;
import com.blinkit.order.exception.OrderDoesNotExistsException;
import com.blinkit.order.repository.OrderRepository;
import com.blinkit.order.response.OrderResponse;

@Service
public class OrderService {

	
	@Autowired
	OrderRepository orderRepository;
	
	public OrderResponse getOrderById(int orderId) {
		
		System.out.println("OrderService.getOrderById() :::::::::::::::::::::::: START");
		
		// OrderEntity entity = orderRepository.findById(orderId).get();
		
		
		OrderEntity entity = null;
		OrderResponse response = new OrderResponse();
		
		try {
			entity = orderRepository.findOrdersByOrderId(orderId);
			
			response.setId(entity.getId());
			response.setProductId(entity.getProductId());
			response.setOrderId(entity.getOrderId());
			response.setCustomerId(entity.getCustomerId());
			response.setQuantity(entity.getQuantity());
			response.setPaymentMethod(entity.getPaymentMethod());
			response.setShippingAdress(entity.getShippingAdress());
			
		} catch (Exception e) {
			
			throw new OrderDoesNotExistsException(" Order id " + orderId + " does Not exists");
			
		}
		
		response.setId(entity.getId());
		response.setProductId(entity.getProductId());
		response.setOrderId(entity.getOrderId());
		response.setCustomerId(entity.getCustomerId());
		response.setQuantity(entity.getQuantity());
		response.setPaymentMethod(entity.getPaymentMethod());
		response.setShippingAdress(entity.getShippingAdress());
		
		System.out.println("OrderService.getOrderById() :::::::::::::::::::::::: END");
		
		return response;
		
	}
	
	public List<OrderResponse> listOrdersByPayment(String paymentType) {
		System.out.println("OrderService.listOrdersByPayment() ::::::::::::::::::::::::::::: START");
		
		List<OrderEntity> orderEntities = orderRepository.findOrdersByPaymentType(paymentType);
		
		List<OrderResponse> response = new ArrayList<OrderResponse>();
		
		for (OrderEntity entities : orderEntities) {
			
			OrderResponse orderResponse = new OrderResponse();
			
			orderResponse.setId(entities.getId());
			orderResponse.setProductId(entities.getProductId());
			orderResponse.setOrderId(entities.getOrderId());
			orderResponse.setCustomerId(entities.getCustomerId());
			orderResponse.setQuantity(entities.getQuantity());
			orderResponse.setPaymentMethod(entities.getPaymentMethod());
			orderResponse.setShippingAdress(entities.getShippingAdress());
			
			response.add(orderResponse);
		}
		
		System.out.println("OrderService.listOrdersByPayment() ::::::::::::::::::::::::::::: END");
		
		return response;
		
	}
}
