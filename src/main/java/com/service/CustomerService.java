package com.service;

import com.entity.Customer;
import org.springframework.stereotype.Service;

import java.util.List;


public interface CustomerService {

    public List<Customer> getCustomers();
    public void saveCustomer(Customer theCustomer);
    public Customer getCustomer(int theId);
    public void deleteCustomer(int theId);
}
