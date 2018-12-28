package com.lhsang.dashboard.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;

import com.lhsang.dashboard.service.UserService;


@Controller
public class BaseController {
	@Autowired
	UserService userService;
	
	protected final String defaultPage = "DEFAULT";
	
	public com.lhsang.dashboard.model.User currentUser() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Object user = auth.getPrincipal();
		if(user.equals("anonymousUser"))
			return null;
		User result=(User)user;
		return userService.findOneByUsername(result.getUsername());
	}
	

}