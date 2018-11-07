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

import com.lhsang.dashboard.model.Role;
import com.lhsang.dashboard.service.RoleService;

@Controller
@RequestMapping("/admin")
@Transactional
public class AdminController {
	
	@Autowired
	RoleService roleService;
	
	@RequestMapping(value = "")
    public String adminPage(Model model, Principal principal) {
         
        return "admin";
    }
	
	@RequestMapping(value = "/dashboard")
	@ResponseBody
    public String dashboard() {
        return "haha";
    }
	
	@RequestMapping(value = "/add-user")
    public String addUser(Model model) {
        List<Role> roles=roleService.findAll();
        model.addAttribute("roles", roles);
        return "add_user_form";
    }
	
	@RequestMapping(value = "/action-add-user")
    public String addUser(String username,String password,int role_id) {
		System.out.println(username+password+role_id);
        return "redirect:/";
    }
}

