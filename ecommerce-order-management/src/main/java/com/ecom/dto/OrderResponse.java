package com.ecom.dto;

public class OrderResponse {

    private Long id;

    private String orderNumber;

    private String orderDate;

    private Double totalAmount;

    private String status;

    public OrderResponse() {
    }

    public OrderResponse(
            Long id,
            String orderNumber,
            String orderDate,
            Double totalAmount,
            String status
    ) {
        this.id = id;
        this.orderNumber = orderNumber;
        this.orderDate = orderDate;
        this.totalAmount = totalAmount;
        this.status = status;
    }

    public Long getId() {
        return id;
    }

    public String getOrderNumber() {
        return orderNumber;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public Double getTotalAmount() {
        return totalAmount;
    }

    public String getStatus() {
        return status;
    }
}
