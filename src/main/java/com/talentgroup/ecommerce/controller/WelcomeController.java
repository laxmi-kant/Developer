package com.talentgroup.ecommerce.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.talentgroup.ecommerce.service.WelcomeService;

@RestController
public class WelcomeController {
    
	@Autowired
	private WelcomeService wc;
	
	@RequestMapping("/welcome")
	public String getValue(){
		return wc.welcome();
	}
}
