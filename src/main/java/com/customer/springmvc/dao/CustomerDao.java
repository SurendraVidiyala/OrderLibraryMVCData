package com.customer.springmvc.dao;

import java.util.List;

import com.customer.springmvc.model.Customer;

public interface CustomerDao {

	Customer saveCustomer(Customer customer);

	Customer findCustomer(Customer customer); 

	Customer findCustomerFullData(Long customId);

    void deleteCustomer(Customer customer);

	Customer updateCustomer(Customer customer);

	Customer findCustomerAddressData(Long customId);

	Customer getCustomer(Integer customId);
	
    List<Customer> listCustomers();
}
