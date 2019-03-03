package com.lhsang.dashboard.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lhsang.dashboard.model.Cart;
import com.lhsang.dashboard.model.Product;
import com.lhsang.dashboard.service.ProductService;

@Controller
@RequestMapping("/transaction")
@Transactional
@SessionAttributes("cart")
public class TransactionController {
	@Autowired
	ProductService productService;
	
	List<Cart> carts =new ArrayList<>();
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/add-to-cart", method = RequestMethod.POST)
	@ResponseBody
	public String addToCart(Cart cart,HttpSession httpSession) {
		try {
			Boolean flag = false;
			for (Cart cart2 : carts) 
				if(cart2.getProductId()==cart.getProductId()) {
					flag =true;
					cart2.setCount(cart2.getCount()+cart.getCount());
					break;
				}
			
			if(flag==false) {
				carts.add(cart);
				httpSession.setAttribute("cart", carts);
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		//List<Cart> list = new ArrayList<>();
		//list= (List<Cart>) httpSession.getAttribute("cart");
		
		System.out.println(carts.size()+"----"+carts.get(0).getCount());
		return "hihi";
	}
	
}
