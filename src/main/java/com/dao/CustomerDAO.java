package com.dao;

import com.entity.Customer;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface CustomerDAO {
    public List<Customer> getCustomers();
    public void saveCustomer(Customer theCustomer);
    public  Customer getCustomer(int theId);
    public void deleteCustomer(int theId);
}
