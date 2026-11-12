package com.ecom.repository;


import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.ecom.entity.CustomerEntity;

public interface CustomerRepository
        extends CrudRepository<CustomerEntity, Long> {
	
	@Query("""
            SELECT DISTINCT c
            FROM CustomerEntity c
            LEFT JOIN FETCH c.orders
            """)
    List<CustomerEntity> findAllCustomersWithOrders();

}
