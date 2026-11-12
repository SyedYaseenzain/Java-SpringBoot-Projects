package com.ecom.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.ecom.dto.CustomerRequest;
import com.ecom.dto.CustomerResponse;
import com.ecom.entity.CustomerEntity;
import com.ecom.repository.CustomerRepository;

@Service
public class CustomerService {

    private final CustomerRepository customerRepository;

    public CustomerService(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }
    
    public List<CustomerEntity> getCustomersWithOrders() {

        return customerRepository
                .findAllCustomersWithOrders();
    }

    public CustomerResponse createCustomer(CustomerRequest request) {

        CustomerEntity customer = new CustomerEntity();

        customer.setName(request.getName());
        customer.setEmail(request.getEmail());

        CustomerEntity savedCustomer =
                customerRepository.save(customer);

        return new CustomerResponse(
                savedCustomer.getId(),
                savedCustomer.getName(),
                savedCustomer.getEmail()
        );
    }

    public List<CustomerResponse> getAllCustomers() {

        Iterable<CustomerEntity> customers =
                customerRepository.findAll();

        List<CustomerResponse> responses =
                new ArrayList<>();

        for (CustomerEntity customer : customers) {

            CustomerResponse response =
                    new CustomerResponse(
                            customer.getId(),
                            customer.getName(),
                            customer.getEmail()
                    );

            responses.add(response);
        }

        return responses;
    }

    public void demonstrateNPlusOne() {

        Iterable<CustomerEntity> customers =
                customerRepository.findAll();

        for (CustomerEntity customer : customers) {

            System.out.println(
                    "Customer: " + customer.getName()
            );

            System.out.println(
                    "Orders: " + customer.getOrders().size()
            );
        }
    }
    
    public CustomerResponse getCustomerById(Long id) {

        CustomerEntity customer =
                customerRepository.findById(id)
                        .orElseThrow(() ->
                                new RuntimeException(
                                        "Customer not found"
                                ));

        return new CustomerResponse(
                customer.getId(),
                customer.getName(),
                customer.getEmail()
        );
    }


public void demonstrateJoinFetch() {

    List<CustomerEntity> customers =
            customerRepository
                    .findAllCustomersWithOrders();

    for (CustomerEntity customer : customers) {

        System.out.println(
                "Customer: " + customer.getName()
        );

        System.out.println(
                "Orders: " + customer.getOrders().size()
        );
    }
}
}