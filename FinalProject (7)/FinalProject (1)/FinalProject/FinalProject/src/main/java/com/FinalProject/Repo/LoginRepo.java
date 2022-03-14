package com.FinalProject.Repo;

import com.FinalProject.Entity.Customer;
import com.FinalProject.Entity.Dealer;

public interface LoginRepo {

	public boolean validateAdmin(String username, String password);
	public boolean validateDealer(String username, String password);
	public boolean validateCustomer(String username, String password);
	public Dealer getDealerByEmail(String email);
	public Dealer getDealerBydId(String dId);
	public Customer getCustomerByEmail(String email);
	
}
