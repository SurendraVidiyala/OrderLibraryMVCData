package com.customer.springmvc.dao;

import java.util.List;

import com.customer.springmvc.model.PaymentMethod;


public interface PaymentMethodDao {

	List<PaymentMethod> findPaymentMethods(Integer customId);

	void deletePaymentMethods(Long customId);

	PaymentMethod updatePaymentMethod(PaymentMethod paymentMethod);

	void insertPaymentMethods(List<PaymentMethod> methods);

	PaymentMethod getPaymentMethod(Integer paymentMethodId);
}
