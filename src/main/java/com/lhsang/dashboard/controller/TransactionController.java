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
@SessionAttributes("carts")
public class TransactionController {
	@Autowired
	ProductService productService;

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/add-to-cart", method = RequestMethod.POST)
	@ResponseBody
	public String addToCart(Cart cart,HttpSession httpSession) {
		
		if(null==httpSession.getAttribute("carts")) {
			List<Cart> carts = new ArrayList<>();
			carts.add(cart);
			httpSession.setAttribute("carts", carts);
		}else {
			List<Cart> carts = (List<Cart>) httpSession.getAttribute("carts");
			if(checkProductExistCart(httpSession,cart) ==-1){
				carts.add(cart);
			}else {
				int pos =checkProductExistCart(httpSession,cart);
				carts.get(pos).setCount(carts.get(pos).getCount()+cart.getCount());
			}
		}
		
		//List<Cart> list =  (List<Cart>) httpSession.getAttribute("carts");
		//System.out.println(list.size()+"---_"+list.get(0).getProductId()+"-----"+list.get(0).getCount());
		return "hihi";
	}

	@SuppressWarnings("unchecked")
	private int checkProductExistCart(HttpSession httpSession,Cart cart) {
		List<Cart> carts =  (List<Cart>) httpSession.getAttribute("carts");
		
		for(int i=0;i<carts.size();i++) {
			if(carts.get(i).getProductId()==cart.getProductId())
				return i;
		}
		return -1;
	}
	
	
	
}
