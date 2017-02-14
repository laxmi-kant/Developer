package com.talentgroup.ecommerce.dao;

import org.springframework.stereotype.Repository;

@Repository
public class WelcomeDao {
	public String welcome() {
		return "Good Mornig Lk";
	}
}
