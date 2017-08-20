package com.sunshine.mall.sale.util;

import javax.servlet.http.Cookie;

import org.apache.commons.lang.StringUtils;


public class MyCookieUtil {

	
	public static String getCooKie(Cookie[] cookies,String key) {
		if(StringUtils.isBlank(key)) {
			return null;
		}
		String cookiename="";
		for (Cookie cookie : cookies) {
			cookiename = cookie.getName();
			if(key.equals(cookiename)) {
				 return   cookie.getValue();
			}
		}
		return null;
	}
}
