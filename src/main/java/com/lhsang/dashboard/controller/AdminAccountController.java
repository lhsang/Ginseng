package com.lhsang.dashboard.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.catalina.connector.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lhsang.dashboard.model.BaseResponse;
import com.lhsang.dashboard.model.Role;
import com.lhsang.dashboard.model.User;
import com.lhsang.dashboard.service.RoleService;
import com.lhsang.dashboard.service.UserService;
import com.lhsang.dashboard.utils.ConstantUtils;
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

	@RequestMapping(value = { "/user-management" }, method = RequestMethod.GET, produces = { MediaType.APPLICATION_JSON_VALUE} )
    public String userManagementFilter(Model model,
    		@RequestParam(value="role_id",required =false, defaultValue = "0") Integer role_id,
    		@RequestParam(value="offset",required =false, defaultValue = "0") Integer offset,
    		@RequestParam(value="limit",required =false, defaultValue = "10") Integer maxResults) {
		List<User> users=new ArrayList<>();
		if(role_id==ConstantUtils.ROLE_ADMIN||role_id==ConstantUtils.ROLE_USER||role_id==ConstantUtils.ROLE_SUPERADMIN) {
			Role role=roleService.findOneById(role_id);
	        users=role.getUser();
		}
		else {
			users=userService.findAll(offset,maxResults);
			
		}
		model.addAttribute("count", userService.count());
        model.addAttribute("offset", offset);
        model.addAttribute("limit", maxResults);
        model.addAttribute("users", users);
        model.addAttribute("role", role_id);
        model.addAttribute("uri", "user-management");
       
        
        return "userManagement";
    }
	
	@RequestMapping(value = { "/render-header/{username}" }, method = RequestMethod.POST)
    public ModelAndView renderHeader(Model model,@PathVariable("username") String username) {
		
		User user =userService.findOneByUsername(username);
		model.addAttribute("user", user);
       
        return new ModelAndView("user/_header");
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
        return "redirect:/admin/user-management";
    }
	
	@RequestMapping(value = "/profile/{username}")
    public String profile(Model model,@PathVariable("username") String username) {
		User user =userService.findOneByUsername(username);
		model.addAttribute("user", user);
        return "profile";
    }
	
	@RequestMapping(value = "/ban/{username}", method = RequestMethod.POST, produces = {
			MediaType.APPLICATION_JSON_VALUE })
    public ResponseEntity<BaseResponse> banUser(Model model,@PathVariable("username") String username) {
		BaseResponse response = new BaseResponse();
		response.setStatus(ResponseStatusEnum.SUCCESS);
		
		try {
			User user =userService.findOneByUsername(username);
			user.setStatus(-1);
			
			userService.save(user);
			
			response.setStatus(ResponseStatusEnum.SUCCESS);
		} catch (Exception ex) {
			response.setStatus(ResponseStatusEnum.FAIL);
			response.setMessageError(ex.getMessage());
		}
		return new ResponseEntity<BaseResponse>(response, HttpStatus.OK);
    }
}

