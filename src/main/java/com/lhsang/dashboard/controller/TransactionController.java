package com.lhsang.dashboard.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.lhsang.dashboard.model.BaseResponse;
import com.lhsang.dashboard.model.Cart;
import com.lhsang.dashboard.model.Order;
import com.lhsang.dashboard.model.OrderDetail;
import com.lhsang.dashboard.model.Product;
import com.lhsang.dashboard.model.User;
import com.lhsang.dashboard.service.OrderDetailService;
import com.lhsang.dashboard.service.OrderService;
import com.lhsang.dashboard.service.ProductService;
import com.lhsang.dashboard.service.UserService;
import com.lhsang.dashboard.utils.ConstantUtils;
import com.lhsang.dashboard.utils.FormatUnit;
import com.lhsang.dashboard.utils.Utils;
import com.lhsang.helper.ResponseStatusEnum;

@Controller
@RequestMapping("/transaction")
@Transactional
@SessionAttributes("carts")
public class TransactionController {
	@Autowired
	ProductService productService;
	
	@Autowired
	OrderService orderService;
	
	@Autowired
	OrderDetailService orderDetailService;
	
	@Autowired
	UserService userService;
	
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
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/render-bill" }, method = RequestMethod.POST)
    public ModelAndView renderbill(HttpSession httpSession, Model model) {
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
	    return new ModelAndView("others/_bill");
    }
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/confirm-order", method = RequestMethod.GET)
	public String confirmOrder(Model model,HttpSession httpSession) {
		if(null!=httpSession.getAttribute("carts")) {
			List<Cart> list = (List<Cart>) httpSession.getAttribute("carts");
			model.addAttribute("amount", list.size());
		}
		return "confirmOrder";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/order", method = RequestMethod.POST, produces = {
			MediaType.APPLICATION_JSON_VALUE })
	public ResponseEntity<BaseResponse> order(Model model,HttpSession httpSession,
			String name,String phone,String email,String address,String message) {
		BaseResponse response = new BaseResponse();
		response.setStatus(ResponseStatusEnum.SUCCESS);
		
		Order order =new Order();
		int total=0;
		try {
			if(null!=httpSession.getAttribute("carts")) {
				List<Cart> list = (List<Cart>) httpSession.getAttribute("carts");
				if(list.size()>0) {
					for(Cart item:list)
						total+=item.getPrice()*item.getCount();

					User guest = userService.findOneByUsername("guest");
					order.setUser(guest);
					
					order.setMoney(total);
					order.setStatus((byte)ConstantUtils.ORDER_SPENDING);
					order.setCreatedAt(new Date());
					order.setName(name);
					order.setEmail(email);
					order.setAddress(address);
					order.setPhone(phone);
					order.setNotes(message);
					
					orderService.save(order);
					
					saveOrderDetails(order,httpSession);
					
					response.setMessageError("Đơn hàng của bạn đã được ghi lại.");
				}else {
					response.setStatus(ResponseStatusEnum.MISSING_PARAMS);
					response.setMessageError("Chưa có sản phẩm nào trong giỏ hàng.");
				}
			}
			
		} catch (Exception e) {
			response.setStatus(ResponseStatusEnum.FAIL);
			response.setMessageError(e.getMessage());
		}
		return new ResponseEntity<BaseResponse>(response, HttpStatus.OK);
	}
	
	
	@SuppressWarnings("unchecked")
	@ResponseBody
	public String saveOrderDetails(Order order,HttpSession httpSession) {
		if(null!=httpSession.getAttribute("carts")) {
			List<Cart> carts = (List<Cart>) httpSession.getAttribute("carts");
			for(Cart item:carts) {
				OrderDetail detail =new OrderDetail();
				detail.setOrder(order);
				detail.setPrice(item.getPrice());
				detail.setAmount(item.getCount());
				detail.setCreatedAt(new Date());
				detail.setProduct(productService.findOneById(item.getProductId()));
				detail.setStatus((byte) ConstantUtils.ORDER_SPENDING);
				orderDetailService.save(detail);
			}
			
			carts.clear();
		}
		
		return "hihi";
	}
}
