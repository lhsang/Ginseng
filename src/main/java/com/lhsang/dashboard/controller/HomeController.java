package com.lhsang.dashboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.lhsang.dashboard.model.Role;
import com.lhsang.dashboard.service.RoleService;

@Controller
@RequestMapping("/")
@Transactional
public class HomeController {
	@Autowired
	RoleService roleService;
	
	//@RequestMapping(value = "", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE })
	//@JsonIgnore
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String hello() {
		
		List<Role>list= roleService.findAll();
		for(Role x: list) {
			System.out.println(x.getName());
		}
		return "login";
	}
	@RequestMapping(value = "/api", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public List<Role> api() {
		
		List<Role>list= roleService.findAll();
		for(Role x: list) {
			System.out.println(x.getName());
		}
		return list;
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home() {
		
		
		return "home";
	}
}
