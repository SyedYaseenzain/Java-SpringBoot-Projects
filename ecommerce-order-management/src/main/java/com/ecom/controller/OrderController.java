package com.ecom.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.ecom.dto.OrderRequest;
import com.ecom.dto.OrderResponse;
import com.ecom.service.OrderService;

@RestController
@RequestMapping("/orders")
public class OrderController {

    private final OrderService orderService;

    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @PostMapping("/customer/{customerId}")
    public ResponseEntity<OrderResponse> createOrder(
            @PathVariable Long customerId,
            @RequestBody OrderRequest request
    ) {

        OrderResponse response =
                orderService.createOrder(
                        customerId,
                        request
                );

        return ResponseEntity
                .status(HttpStatus.CREATED)
                .body(response);
    }

    @GetMapping("/customer/{customerId}")
    public ResponseEntity<List<OrderResponse>> getOrdersByCustomer(
            @PathVariable Long customerId
    ) {

        return ResponseEntity.ok(
                orderService.getOrdersByCustomer(
                        customerId
                )
        );
    }
}