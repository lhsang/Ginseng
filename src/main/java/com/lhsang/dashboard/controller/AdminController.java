package com.lhsang.dashboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lhsang.dashboard.model.Role;
import com.lhsang.dashboard.service.RoleService;

@Controller
@RequestMapping("/admin")
@Transactional
public class AdminController {
	@Autowired
	RoleService roleService;

	//@RequestMapping(value = "", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE })
		//@JsonIgnore
		@RequestMapping(value = "", method = RequestMethod.GET)
		public String home() {
			
			List<Role>list= roleService.findAll();
			for(Role x: list) {
				System.out.println(x.getName());
			}
			return "home";
		}
}


