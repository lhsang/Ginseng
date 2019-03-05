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
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.lhsang.dashboard.model.Cart;
import com.lhsang.dashboard.model.Product;
import com.lhsang.dashboard.service.ProductService;
import com.lhsang.dashboard.utils.FormatUnit;

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
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/cart-header" }, method = RequestMethod.GET)
    public ModelAndView renderCartHeader(HttpSession httpSession, Model model) {
		List<Product> products = new ArrayList<>();
		int total =0;
		try {
			if(null!=httpSession.getAttribute("carts")) {
				List<Cart> list = (List<Cart>) httpSession.getAttribute("carts");
				for(Cart item:list) {
					Product temp=productService.findOneById(item.getProductId());
					total+=temp.getPrice()*item.getCount();
					temp.setNotes(Integer.toString(item.getCount()));
					products.add(temp);
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		model.addAttribute("total", FormatUnit.formatMoneyToVND(total));
		model.addAttribute("products", products);
	    return new ModelAndView("others/_cart");
    }
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/remove-item-cart", method = RequestMethod.POST)
	@ResponseBody
	public String removeItemCart(HttpSession httpSession,int id) {
		try {
			Cart cart =new Cart();
			cart.setProductId(id);
			int pos=checkProductExistCart(httpSession, cart);
			
			List<Cart> carts =(List<Cart>) httpSession.getAttribute("carts");
			if(pos!=-1)
				carts.remove(pos);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "hihi";
	}
	
	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public String checkout(Model model,HttpSession httpSession) {
		try {
			if(httpSession.getAttribute("carts")!=null) {
				List<Cart> list =(List<Cart>) httpSession.getAttribute("carts");
				List<Product> products = new ArrayList<>();
				for(Cart item:list) {
					Product temp=productService.findOneById(item.getProductId());
					temp.setNotes(Integer.toString(item.getCount()));
					products.add(temp);
				}
				model.addAttribute("products", products);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "checkout";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/cart-set-count", method = RequestMethod.POST)
	@ResponseBody
	public String setCount(HttpSession httpSession,int id,int count) {
		Cart cart =new Cart();
		cart.setProductId(id);
		try {
			if(httpSession.getAttribute("carts")!=null) {
				int pos=checkProductExistCart(httpSession, cart);
				List<Cart> carts =(List<Cart>) httpSession.getAttribute("carts");
				if(pos!=-1)
					carts.get(pos).setCount(count);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "hihi";
	}
}
