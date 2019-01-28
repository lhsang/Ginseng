package com.lhsang.dashboard.controller;

import java.security.Principal;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.lhsang.dashboard.model.Role;
import com.lhsang.dashboard.service.RoleService;
import com.lhsang.dashboard.service.UserService;
import com.lhsang.dashboard.utils.ConstantUtils;
import com.lhsang.dashboard.utils.EncrytedPasswordUtils;

import antlr.Utils;

@Controller
@RequestMapping("/")
@Transactional
public class LoginController {
	@Autowired
	RoleService roleService;
	
	@Autowired
	UserService userService;
	
	//@RequestMapping(value = "", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE })
	//@JsonIgnore
	@RequestMapping(value = "/login",method = RequestMethod.GET)
	public ModelAndView hello( ModelAndView model,@RequestParam(value = "error", required = false) String error) {
		if (error != null) {
			model.addObject("error", "Username or password is incorrect !");
		}
		model.setViewName("login");
		return model;
	}

	@RequestMapping(value = "/403")
	public String AccessDeniedException() {
		return "403";
	}

	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null){    
	        new SecurityContextLogoutHandler().logout(request, response, auth);
	    }
	    return "redirect:/";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
	}
	
	
	@RequestMapping(value = { "/render-header/{username}" }, method = RequestMethod.POST)
    public ModelAndView renderHeader(Model model,@PathVariable("username") String username) {
		
		com.lhsang.dashboard.model.User user =userService.findOneByUsername(username);
		model.addAttribute("user", user);
       
        return new ModelAndView("user/_headerClient");
    }
	
	@RequestMapping(value = { "/register" }, method = RequestMethod.POST)
    public String register(Model model,com.lhsang.dashboard.model.User user ) {
		com.lhsang.dashboard.model.User newUser = new com.lhsang.dashboard.model.User();
		newUser.setUserName(user.getUserName());
		newUser.setPhone(user.getUserName());
		newUser.setCreatedAt(new Date());
		newUser.setPassword(EncrytedPasswordUtils.encrytePassword(user.getPassword()));
		newUser.setEmail(user.getEmail());
		newUser.setStatus(ConstantUtils.ACC_STATUS_ACTIVE);
		newUser.setAddress(user.getAddress());
        newUser.setFullName(user.getFullName());
        newUser.setRole(roleService.findOneById(ConstantUtils.ROLE_USER));
        userService.save(newUser);
        return "redirect:/";
    }
}
