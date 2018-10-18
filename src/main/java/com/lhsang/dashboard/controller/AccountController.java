package com.lhsang.dashboard.controller;

import java.lang.ProcessBuilder.Redirect;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lhsang.dashboard.model.User;
import com.lhsang.dashboard.service.UserService;

@Controller
@RequestMapping("/account")
@Transactional
public class AccountController {
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(String username,String password) {
		System.out.println(username);
		System.out.println(password);
		User user=userService.findOneByUsername(username);
		try {
			if(user!=null) {
				if(password.equals(user.getPassword()))
					return "home";
			}
			
		}catch(Exception exception) {
			
			return "login";
		}
		return "login";
		
	}
	
}
