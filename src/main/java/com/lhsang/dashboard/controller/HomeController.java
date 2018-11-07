package com.lhsang.dashboard.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
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
	@RequestMapping(value = "/login")
	public String hello() {
		
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
	
	@RequestMapping(value = "")
	public String home() {

       
       return "home";
	}
	
	
	
	@RequestMapping(value = "/403")
	public String AccessDeniedException() {
		return "403";
	}
	
	@RequestMapping(value = "/logout")
	public String logout() {
		return "logout";
	}
	
	@RequestMapping(value = "/fail")
	public String logginFail() {
		return "login_fail";
	}
}
