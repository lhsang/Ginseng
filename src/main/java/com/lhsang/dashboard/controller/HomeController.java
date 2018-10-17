package com.lhsang.dashboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.lhsang.dashboard.model.Role;
import com.lhsang.dashboard.service.RoleService;

@RestController
@RequestMapping("/")
@Transactional
public class HomeController {
	@Autowired
	RoleService roleService;
	
	@RequestMapping(value = "", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE })
	@JsonIgnore
	public List<Role> hello() {
		List<Role>list= roleService.findAll();
		for(Role x: list) {
			System.out.println(x.getName());
		}
			
		return list;
	}
}
