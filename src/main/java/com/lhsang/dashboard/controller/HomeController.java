package com.lhsang.dashboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lhsang.dashboard.model.Role;
import com.lhsang.dashboard.service.RoleService;

@Controller
@RequestMapping("/")
@Transactional
public class HomeController {
	@Autowired
	RoleService roleService;
	
	@RequestMapping("")
	public String hello() {
		List<Role>list= roleService.findAll();
		for(Role x: list) {
			System.out.println(x.getName());
		}
			
		return "index";
	}
}
