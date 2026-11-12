package com.ecom.service;


import java.time.LocalDate;
import java.util.List;

import org.springframework.stereotype.Service;

import com.ecom.dto.OrderRequest;
import com.ecom.dto.OrderResponse;
import com.ecom.entity.CustomerEntity;
import com.ecom.entity.OrderEntity;
import com.ecom.repository.CustomerRepository;
import com.ecom.repository.OrderRepository;

@Service
public class OrderService {

    private final OrderRepository orderRepository;

    private final CustomerRepository customerRepository;

    public OrderService(
            OrderRepository orderRepository,
            CustomerRepository customerRepository
    ) {
        this.orderRepository = orderRepository;
        this.customerRepository = customerRepository;
    }

    public OrderResponse createOrder(
            Long customerId,
            OrderRequest request
    ) {

        CustomerEntity customer =
                customerRepository.findById(customerId)
                        .orElseThrow(() ->
                                new RuntimeException(
                                        "Customer not found"
                                ));

        OrderEntity order = new OrderEntity();

        order.setOrderNumber(request.getOrderNumber());

        order.setOrderDate(
                LocalDate.parse(request.getOrderDate())
        );

        order.setTotalAmount(
                request.getTotalAmount()
        );

        order.setStatus(
                request.getStatus()
        );

        order.setCustomer(customer);

        OrderEntity savedOrder =
                orderRepository.save(order);

        return convertToResponse(savedOrder);
    }

    public List<OrderResponse> getOrdersByCustomer(
            Long customerId
    ) {

        return orderRepository
                .findByCustomerId(customerId)
                .stream()
                .map(this::convertToResponse)
                .toList();
    }

    private OrderResponse convertToResponse(
            OrderEntity order
    ) {

        return new OrderResponse(
                order.getId(),
                order.getOrderNumber(),
                order.getOrderDate().toString(),
                order.getTotalAmount(),
                order.getStatus()
        );
    }
}