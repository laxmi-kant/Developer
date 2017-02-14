package com.talentgroup.ecommerce.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.talentgroup.ecommerce.dao.WelcomeDao;

@Service
public class WelcomeService {
	@Autowired
	private WelcomeDao wd;

	public String welcome() {     
		return wd.welcome()+"Yadav";
	}
}
