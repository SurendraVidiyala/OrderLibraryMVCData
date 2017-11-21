package com.customer.springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.customer.springmvc.model.Customer;
import com.customer.springmvc.model.PaymentMethod;
import com.customer.springmvc.service.CustomerService;

@Controller
@RequestMapping("/customers")
public class CustomerController {

	final static Logger logger = Logger.getLogger(CustomerController.class);

	@Autowired
	private CustomerService customerService;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView welcome() {
		return new ModelAndView("index");
	}

	@GetMapping(value = "/success")
	public String successForm() {
		return "success";
	}

	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public ModelAndView saveCustomer(@ModelAttribute("customer") Customer customer, BindingResult result) {
		customer.getAddresses().setCustomer(customer);
		customerService.createCustomer(customer);
		return new ModelAndView("redirect:/customers/success");
	}

	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public ModelAndView listCustomers() {
		ModelAndView modelandView = new ModelAndView("viewCustomer");
		List<Customer> customerList = customerService.listCustomers();
		modelandView.addObject("customerList", customerList);
		return modelandView;
	}

	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public ModelAndView addCustomer(@ModelAttribute("customer") Customer customer, BindingResult result) {
		ModelAndView model = new ModelAndView("createCustomer");
		model.addObject("customer", new Customer());
		return model;

	}

	
	@GetMapping(value = "/{customerId}/viewPayment")
	public ModelAndView viewAllPayments(@PathVariable(value = "customerId") String custId)
	{
		ModelAndView modelandView = new ModelAndView("viewPaymentMethods");
		List<PaymentMethod> paymentMethods = customerService.findPaymentMethods(Integer.parseInt(custId));
		modelandView.addObject("paymentMethods",paymentMethods);
		return modelandView;
	}
	
	@GetMapping(value = "/{customerId}/add")
	public ModelAndView addPaymentForm(@PathVariable(value = "customerId") String custId)
	{
		ModelAndView modelandView = new ModelAndView("addPaymentMethodForm");
		Customer customer = customerService.getCustomer(Integer.parseInt(custId));
		modelandView.addObject("customer",customer);
		modelandView.addObject("paymentMethod",new PaymentMethod());
		return modelandView;
	}
	
	@PostMapping(value = "/{customerId}/add")
	public String savePayments(@PathVariable(value = "customerId") String custId, @ModelAttribute("paymentMethod") PaymentMethod paymentMethod)
	{
		List<PaymentMethod> paymentMethods = new ArrayList<PaymentMethod>();
		Customer customer = customerService.getCustomer(Integer.parseInt(custId));
		paymentMethod.setCustomer(customer);
		paymentMethods.add(paymentMethod);
		customerService.createPaymentMethods(paymentMethods);
		return "redirect:/customers/successpayment";
	}
	
	
}
