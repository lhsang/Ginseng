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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.lhsang.dashboard.model.Role;
import com.lhsang.dashboard.service.RoleService;

@Controller
@RequestMapping("/")
@Transactional
public class HomeController {
	@Autowired
	RoleService roleService;
	
	@RequestMapping(value = "/api", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public Role api() {
		
		Role list= roleService.findOneById(1);
		return list;
	}
	
	@RequestMapping(value = "")
	public String home() {
       return "home";
	}
	
	
}
