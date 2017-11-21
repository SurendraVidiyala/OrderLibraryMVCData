package com.customer.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.customer.springmvc.dao.CustomerDao;
import com.customer.springmvc.dao.PaymentMethodDao;
import com.customer.springmvc.model.Address;
import com.customer.springmvc.model.Customer;
import com.customer.springmvc.model.PaymentMethod;
import com.customer.springmvc.service.CustomerService;

@Service("customerService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private  CustomerDao customerDao;
	
	@Autowired
	private PaymentMethodDao paymentMethodDao;

	public void deleteCustomer(Customer customer) {
		customerDao.deleteCustomer(customer);
	}

	public void deletePaymentMethods(Long customId) {
		paymentMethodDao.deletePaymentMethods(customId);
	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public Customer createCustomer(Customer customer) {
		Customer insertedCustomer = customerDao.saveCustomer(customer);
		return insertedCustomer;
	}

	public PaymentMethod updatePaymentMethod(PaymentMethod paymentMethod) {
		return paymentMethodDao.updatePaymentMethod(paymentMethod);
	}

	public Customer findCustomerFullData(Long custId) {
		return customerDao.findCustomerFullData(custId);
	}

	public void createPaymentMethods(List<PaymentMethod> methods) {
		paymentMethodDao.insertPaymentMethods(methods);

	}

	public Customer findCustomerAddressData(Long custId) {
		return customerDao.findCustomerAddressData(custId);
	}

	public PaymentMethod getPaymentMethod(Integer paymentMethodId) {
		return paymentMethodDao.getPaymentMethod(paymentMethodId);
	}

	public List<PaymentMethod> findPaymentMethods(Integer custId) {
		return paymentMethodDao.findPaymentMethods(custId);
	}

	public Customer getCustomer(Integer custId) {
		return customerDao.getCustomer(custId);
	}

	public void updateAddress(Address address) {

	}

	public void updateCustomer(Customer customer) {

	}

	@Override
	public List<Customer> listCustomers() {
		return customerDao.listCustomers();
	}

}