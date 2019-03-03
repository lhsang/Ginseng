package com.lhsang.dashboard.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lhsang.dashboard.model.BaseResponse;
import com.lhsang.dashboard.model.Cart;
import com.lhsang.dashboard.model.Product;
import com.lhsang.dashboard.model.User;
import com.lhsang.dashboard.service.ProductService;
import com.lhsang.dashboard.service.UserService;
import com.lhsang.helper.ResponseStatusEnum;



@Controller
@RequestMapping("/")
@Transactional
@SessionAttributes("carts")
public class HomeController extends BaseController{
	@Autowired
	UserService userService;
	
	@Autowired
	ProductService productService;
	
	
	@SuppressWarnings({ "unused", "unchecked" })
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String home(Locale locale, Model model,HttpSession httpSession) {
		List<Product> products = productService.findAll();
		List<List<Product>> allItems=new ArrayList<List<Product>>();
		for (int i=0;i<products.size();i+=2) {
			List<Product> temp=new ArrayList<>();
			temp.add(products.get(i));
			if(i+1<products.size())
				temp.add(products.get(i+1));
			/*if(i+2<products.size())
				temp.add(products.get(i+2));*/
			allItems.add(temp);
		}
		model.addAttribute("products", products);
		model.addAttribute("allItems", allItems);
		
		
			
		return "home";
	}
	
	@RequestMapping(value = "/product/{id}", method = RequestMethod.GET)
	public String productDetail(Model model, @PathVariable("id") int id) {
		
		Product product = productService.findOneById(id);
	
		List<Product> products = productService.findAll();
		
		model.addAttribute("product", product);
		model.addAttribute("products", products);
		return "productDetail";
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
}
