package com.lhsang.helper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.lhsang.dashboard.service.UserService;

public class HandlerInterceptor extends HandlerInterceptorAdapter{

	
	
	private static final Logger logger = LoggerFactory
			.getLogger(HandlerInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		long startTime = System.currentTimeMillis();
		logger.info("Request URL::" + request.getRequestURL().toString()
				+ ":: Start Time=" + System.currentTimeMillis());
		request.setAttribute("startTime", startTime);
		return true;
	}

	@Override
	public void postHandle(
	  HttpServletRequest request, 
	  HttpServletResponse response,
	  Object handler, 
	  ModelAndView modelAndView) throws Exception {
		com.lhsang.dashboard.model.User currentUser=currentUser();
		
	    modelAndView.addObject("currentUser", currentUser);
	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
//		long startTime = (Long) request.getAttribute("startTime");
//		logger.info("Request URL::" + request.getRequestURL().toString()
//				+ ":: End Time=" + System.currentTimeMillis());
//		logger.info("Request URL::" + request.getRequestURL().toString()
//				+ ":: Time Taken=" + (System.currentTimeMillis() - startTime));
	}
	
	@Autowired
	UserService userService;
	
	protected final String defaultPage = "DEFAULT";
	
	public com.lhsang.dashboard.model.User currentUser() {
//		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//		Object user = auth.getPrincipal();
//		com.lhsang.dashboard.model.User btemp =new com.lhsang.dashboard.model.User();
//		if(!user.equals("anonymousUser")) {
//			User result=(User)user;
//			String u=result.getUsername();
//			btemp = userService.findOneByUsername(u);
//		}
		
		return null;
	}
}
