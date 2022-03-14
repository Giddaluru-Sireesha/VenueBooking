package com.FinalProject.RepoImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.FinalProject.Entity.Customer;
import com.FinalProject.Entity.Dealer;
import com.FinalProject.Repo.LoginRepo;

@Service
public class LoginRepoImpl implements LoginRepo {
	
	@Autowired
	JdbcTemplate jt;

	@Override
	public boolean validateAdmin(String username, String password) {
		if(username.equals("vbsadmin")&&password.equals("vbsadmin")) {
			return true;
		}
		else {
			return false;
		}
	}

	@Override
	public Dealer getDealerByEmail(String email) {
		String sql = "Select * from dealers where email = ?;";
		try {
			Dealer dealer = (Dealer) jt.queryForObject(sql, new Object[] {email},new BeanPropertyRowMapper(Dealer.class));
			return dealer;
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return null;
	}

	@Override
	public Dealer getDealerBydId(String dId) {
		String sql = "Select * from dealers where dealerid = ?;"; 
		try {
			Dealer dealer = (Dealer) jt.queryForObject(sql, new Object[] {dId},new BeanPropertyRowMapper(Dealer.class));
			return dealer;
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return null;
	}
	
	@Override
	public boolean validateDealer(String username, String password) {
		
		Dealer dlr = this.getDealerByEmail(username);
		if(dlr == null) {
			return false;
		}
		else {
			if(dlr.getPassword().equals(password)) {
				return true;
			}	
			else {
				return false;
			}
				
		}
		
	}


	@Override
	public Customer getCustomerByEmail(String email) {
		// TODO Auto-generated method stub
		/*String sql = "Select * from Customers where email = ?;";
		try {
			Customer customer = (Customer) jt.queryForObject(sql, new Object[] {email},new BeanPropertyRowMapper(Customer.class));
			return customer;
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return null;*/
		return null;
	}

	@Override
	public boolean validateCustomer(String username, String password) {
		/*if(username.equals("vbsadmin")&&password.equals("vbsadmin")) {
			return true;
		}
		else {
			return false;
		}*/
		return null;
	}

}
