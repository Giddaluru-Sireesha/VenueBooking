package com.FinalProject.controllers;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.FinalProject.Entity.Dealer;
import com.FinalProject.RepoImpl.AdminRepoImpl;

@Controller
public class AdminController {
	
	@Autowired
	AdminRepoImpl ar;
	
	@GetMapping("adminhome")
	public String adminHome() {
		return "Admin/Homepage";
	}
	
	@GetMapping("addD")
	public String AddDealers()
	{
		return "Admin/AddDealers";
	}
	
	@PostMapping("addDS")
	public String AddDealers(@RequestParam String name, @RequestParam String emailId, @RequestParam String dob, @RequestParam String gender, @RequestParam String address, @RequestParam String mobileNo,Model m)
	{
		Dealer d=new Dealer();
		d.setName(name);
		d.setEmailId(emailId);
		d.setDob(dob);
		d.setGender(gender);
		d.setAddress(address);
		d.setMobileNo(mobileNo);
		boolean r = ar.AddDealers(d);
		if(r) {
			m.addAttribute("msg","New Dealer Successfully Registered...");
			return "Admin/AddDealers";
		}
		else {
			m.addAttribute("msg","Registration Failed!...");
			return "Admin/AddDealers";
		}
		
	}
	
	@GetMapping("viewdealers")
	public String getStudList(Model m) {
		List<Dealer> dealersAll = ar.ShowAllDealer();
		m.addAttribute("dlist", dealersAll);
		return "Admin/DealersTable";
	}
	
	

}
