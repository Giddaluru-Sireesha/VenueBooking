package com.FinalProject.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomepageController {
	
	@GetMapping("/")
	public String home() {
		return "HomePage";
	}
	
	@GetMapping("home")
	public String returnHome() {
		return "HomePage";
	}

}
