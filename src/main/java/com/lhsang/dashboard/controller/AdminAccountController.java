package com.lhsang.dashboard.controller;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lhsang.dashboard.model.BaseResponse;
import com.lhsang.dashboard.model.Role;
import com.lhsang.dashboard.model.User;
import com.lhsang.dashboard.service.RoleService;
import com.lhsang.dashboard.service.UserService;
import com.lhsang.dashboard.utils.EncrytedPasswordUtils;
import com.lhsang.helper.ResponseStatusEnum;



@Controller
@RequestMapping("/admin")
@Transactional
public class AdminAccountController {
	
	@Autowired
	RoleService roleService;
	
	@Autowired
	UserService userService;
/*	
	@RequestMapping(value = "")
    public String adminPage() {
        return "dashboard";
    }
	*/
	
	
	
	@RequestMapping(value = "/user-management")
    public String userManagement(Model model) {
        List<User> users=userService.findAll();
        List<Role> roles=roleService.findAll();
        
        model.addAttribute("roles", roles);
        model.addAttribute("users", users);
        return "userManagement";
    }
	@RequestMapping(value = { "/user-management-filter" }, method = RequestMethod.POST, produces = { MediaType.APPLICATION_JSON_VALUE} )
    public ModelAndView userManagementFilter(Model model,int role_id) {
		List<User> users=new ArrayList<>();
		if(role_id==0)
			 users=userService.findAll();
		else {
			Role role=roleService.findOneById(role_id);
	        users=role.getUser();
		}
        model.addAttribute("users", users);
        return new ModelAndView("user/_userByRole");
    }
	
	@RequestMapping(value = { "/check-username" }, method = RequestMethod.POST, produces = { MediaType.APPLICATION_JSON_VALUE} )
    public ResponseEntity<BaseResponse> checkUsername(String username) {
		BaseResponse response = new BaseResponse();
		response.setStatus(ResponseStatusEnum.SUCCESS);
		response.setMessage(ResponseStatusEnum.SUCCESS);
		response.setData(null);
		
		if(userService.findOneByUsername(username)!=null) {
			response.setMessage(ResponseStatusEnum.FAIL);
			response.setStatus(ResponseStatusEnum.FAIL);
		}
		
		return new ResponseEntity<BaseResponse>(response, HttpStatus.OK);
    }
	
	
	@RequestMapping(value = "/add-user")
    public String addUser(Model model) {
        List<Role> roles=roleService.findAll();
        model.addAttribute("roles", roles);
        return "add_user_form";
    }
	
	@RequestMapping(value = "/action-add-user")
    public String addUser(String username,String password,int role_id,String email,String fullname,String phone) {
		User user=new User();
		
		user.setUserName(username);
		user.setEmail(email);
		user.setFullName(fullname);
		user.setPhone(phone);
		user.setPassword(EncrytedPasswordUtils.encrytePassword(password));
		user.setRole(roleService.findOneById(role_id));
		
		userService.save(user);
        return "redirect:/admin";
    }
	
	
}

