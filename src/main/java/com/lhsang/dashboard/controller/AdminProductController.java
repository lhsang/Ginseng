package com.lhsang.dashboard.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lhsang.dashboard.service.RoleService;
import com.lhsang.dashboard.service.UserService;

@Controller
@RequestMapping("/admin")
@Transactional
public class AdminProductController {
	
	@Autowired
	RoleService roleService;
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "")
    public String adminPage() {
        return "dashboard";
    }
	
	
	
	
	
}

