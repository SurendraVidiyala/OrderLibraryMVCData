package com.customer.springmvc.service;

import java.util.List;

import com.customer.springmvc.model.Address;
import com.customer.springmvc.model.Customer;
import com.customer.springmvc.model.PaymentMethod;

public interface CustomerService {
	
	void updateAddress(Address address);

	void updateCustomer(Customer customer);

	void deleteCustomer(Customer customer);

	void deletePaymentMethods(Long customId);

	Customer createCustomer(Customer customer);

	PaymentMethod updatePaymentMethod(PaymentMethod paymentMethod);

	Customer findCustomerFullData(Long customId);

	void createPaymentMethods(List<PaymentMethod> methods);

	Customer findCustomerAddressData(Long customId);
	
	PaymentMethod getPaymentMethod(Integer paymentMethodId);
	
	List<PaymentMethod> findPaymentMethods(Integer customId);
	
	Customer getCustomer(Integer custId);
	
	List<Customer> listCustomers();


}
