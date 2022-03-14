package com.FinalProject.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.FinalProject.Entity.Customer;
import com.FinalProject.Entity.Dealer;
import com.FinalProject.RepoImpl.DealerRepoImpl;
import com.FinalProject.RepoImpl.LoginRepoImpl;

@Controller
public class LogInController {
	
	@Autowired
	LoginRepoImpl lr;
	
	@Autowired
	DealerRepoImpl dr;

	@PostMapping("login")
	public String Login(@RequestParam String username, @RequestParam String password, @RequestParam String usertype, Model m) {
		
		if(usertype.equals("admin")) {
			boolean res = lr.validateAdmin(username, password);
			if(res) {
				return "Admin/AdminHome";
			}
			else {
				m.addAttribute("msg","Wrong Username / Password");
				return "Login/Loginpage";
			}
		}
		else if(usertype.equals("dealer")) {
			boolean res = lr.validateDealer(username, password);
			if(res) {
				Dealer dlr = lr.getDealerByEmail(username);
				dr.setDealerId(dlr.getDealerId());
				m.addAttribute("dealer", dlr);
				return "Dealer/Homepage";
			}
			else {
				m.addAttribute("msg","Wrong Username / Password");
				return "HomePage";
			}
			
		}
		else if(usertype.equals("customer")) {
			boolean res = lr.validateCustomer(username, password);
			if(res) {
				Customer cust = lr.getCustomerByEmail(username);
//				cr.setCustId(cust.getCustId());
				m.addAttribute("cust", cust);
				return "Customer/Homepage";
			}
			else {
				m.addAttribute("msg","Wrong Username / Password");
				return "HomePage";
			}
		}
		else {
			m.addAttribute("msg","Wrong Username / Password");
			return "HomePage";
		}
		
	}
	
}
