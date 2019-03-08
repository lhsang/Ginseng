package com.lhsang.dashboard.utils;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public class Utils {
	
	@SuppressWarnings("rawtypes")
	public static Map<String, String> getClientInfo(HttpServletRequest request) {
		Map<String, String> result = new HashMap<>();

        Enumeration headerNames = request.getHeaderNames();
        while (headerNames.hasMoreElements()) {
            String key = (String) headerNames.nextElement();
            String value = request.getHeader(key);
            result.put(key, value);
        }
        return result;
	}
	
	public static String getClientIP(HttpServletRequest request) {
		String IP=""; String key = "x-forwarded-for";
		Map<String, String> result = getClientInfo(request);
		
		IP = result.get(key);
		System.out.println(result);
		System.out.println(request.getRemoteAddr());
		return IP;
	}

}
