package com.lhsang.helper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.lhsang.dashboard.model.CustomUserDetail;
import com.lhsang.dashboard.service.UserService;


public class HandlerInterceptor extends HandlerInterceptorAdapter{

	@Autowired
	UserService userService;
	
	protected final String defaultPage = "DEFAULT";
	
	private static final Logger logger = LoggerFactory
			.getLogger(HandlerInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		return true;
	}

	@Override
	public void postHandle(
	  HttpServletRequest request, 
	  HttpServletResponse response,
	  Object handler, 
	  ModelAndView modelAndView) throws Exception {
		com.lhsang.dashboard.model.User currentUser=currentUser();
		
	    //modelAndView.addObject("currentUser", currentUser);
	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
	}
	
	
	public com.lhsang.dashboard.model.User currentUser() {
		//if(SecurityContextHolder.getContext().getAuthentication().getPrincipal().equals("anonymousUser"))
		//	return null;
		//CustomUserDetail myUserDetails = (CustomUserDetail) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		/*Object user = auth.getPrincipal();
		com.lhsang.dashboard.model.User btemp =new com.lhsang.dashboard.model.User();
		if(!user.equals("anonymousUser")) {
			User result=(User)user;
			String u=result.getUsername();
			System.out.println("\n\n\n\n\n\n\n\n\n\n"+u);
			btemp = userService.findOneByUsername(u);
			if(btemp==null)
				System.out.println("\n\n\n\n\n\n\n\n\n\n  null");
			else
				System.out.println("\n\n\n\n\n\n\n\n\n\n"+btemp.getFullName());
		}*/
		//System.out.println("\n\n\n\n\n\n\n\n\n\n"+myUserDetails.getUser().getFullName());
		return new com.lhsang.dashboard.model.User();
	}
}
