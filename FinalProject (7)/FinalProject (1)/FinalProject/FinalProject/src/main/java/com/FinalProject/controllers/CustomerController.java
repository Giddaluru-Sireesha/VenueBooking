package com.FinalProject.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.FinalProject.Entity.Customer;
import com.FinalProject.RepoImpl.CustomerRepoImpl;

@Controller
public class CustomerController {

	@Autowired
	CustomerRepoImpl cr;
	
	@PostMapping("addCS")
	public String AddCustomer(@RequestParam String custFName,@RequestParam String custLName,@RequestParam String password, @RequestParam String emailId, @RequestParam String dob, @RequestParam String gender, @RequestParam String address, @RequestParam String mobile,Model m)
	{
		Customer c=new Customer();
		c.setCustFName(custFName);
		c.setCustLName(custLName);
		c.setPassword(password);
		c.setEmailId(emailId);
		c.setDob(dob);
		c.setGender(gender);
		c.setAddress(address);
		c.setMobile(mobile);
		boolean r = cr.AddCustomer(c);
		if(r) {
			m.addAttribute("msg","New Customer Successfully Registered...");
			return "Customer/AddCustomer";
		}
		else {
			m.addAttribute("msg","Registration Failed!...");
			return "Customer/AddCustomer";
		}
		
	}
	
	@GetMapping("viewcustomers")
	public String getCustList(Model m) {
		List<Customer> CustomersAll = cr.ShowAllCustomers();
		m.addAttribute("clist", CustomersAll);
		return "Customer/CustomersTable";
	}
}
