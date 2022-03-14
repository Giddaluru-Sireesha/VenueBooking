package com.FinalProject.Repo;

import java.util.List;

import com.FinalProject.Entity.Customer;


public interface CustomerRepo {

	public boolean AddCustomer(Customer customer);
	public List<Customer> ShowAllCustomers();
}
