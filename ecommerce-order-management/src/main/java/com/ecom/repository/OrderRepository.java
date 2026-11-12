package com.ecom.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ecom.entity.OrderEntity;


public interface OrderRepository
        extends CrudRepository<OrderEntity, Long> {

    List<OrderEntity> findByCustomerId(Long customerId);
}
