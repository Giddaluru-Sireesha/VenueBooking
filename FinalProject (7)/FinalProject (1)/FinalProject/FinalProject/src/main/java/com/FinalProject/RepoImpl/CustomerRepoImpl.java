package com.FinalProject.RepoImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.FinalProject.Entity.Customer;
import com.FinalProject.Repo.CustomerRepo;

@Component
public class CustomerRepoImpl implements CustomerRepo {

	@Autowired
	JdbcTemplate jt;
	
	@Override
	public boolean  AddCustomer(Customer customer) {
		// TODO Auto-generated method stub
		String str= "Insert into Customers(Fname, Lname, password, emailId, dob, gender, address, mobileNo) values(?,?,?,?,?,?,?,?)";
		try
		{
		int r= jt.update(str, new Object[] {customer.getCustFName(), customer.getCustLName(), customer.getPassword(), customer.getEmailId(), customer.getDob(), customer.getGender(), customer.getAddress(),customer.getMobile()});
				if(r>=1)
					   return true;
					else
						return false;
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return false;
	}
	
	@Override
	public List<Customer> ShowAllCustomers() {
		
		String sql = "Select * from Customers;";
		try {
			List<Customer> CustomersAll = jt.query(sql, new BeanPropertyRowMapper(Customer.class));
			return CustomersAll;
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return null;
	}

}
