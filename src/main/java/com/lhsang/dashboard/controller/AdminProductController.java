package com.lhsang.dashboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lhsang.dashboard.model.Product;
import com.lhsang.dashboard.service.ProductService;
import com.lhsang.dashboard.service.RoleService;
import com.lhsang.dashboard.service.UserService;

@Controller
@RequestMapping("/admin")
@Transactional
public class AdminProductController {
	
	@Autowired
	RoleService roleService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	ProductService productService;
	
	@RequestMapping(value = "")
    public String adminPage() {
        return "dashboard";
    }
	
	@RequestMapping(value = "/product-management", method = RequestMethod.GET)
    public ModelAndView allProduct(
    		@RequestParam(value="keyword",required =false, defaultValue = "") String keyword,
    		@RequestParam(value="offset",required =false, defaultValue = "0") Integer offset,
    		@RequestParam(value="limit",required =false, defaultValue = "10") Integer maxResults) {
		ModelAndView model=new ModelAndView();
		model.setViewName("productManage");
		List<Product> products=productService.findAll(keyword, offset, maxResults);
		model.addObject("products", products);
		
		model.addObject("count", userService.count());
        model.addObject("offset", offset);
        model.addObject("limit", maxResults);
        model.addObject("uri", "product-management");
        return model;
    }
	
	
	
}

