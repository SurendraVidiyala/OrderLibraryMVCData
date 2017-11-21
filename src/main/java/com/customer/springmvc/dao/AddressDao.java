package com.customer.springmvc.dao;

import com.customer.springmvc.model.Address;

public interface AddressDao {

	Address updateAddress(Address address);

	Long deleteAddress(Long customId);
}
