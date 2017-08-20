package com.sunshine.mall.sale.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sunshine.mall.auth.service.UserAuthService;
import com.sunshine.mall.sale.bean.T_User_Count;
import com.sunshine.mall.sale.bean.T_cart;
import com.sunshine.mall.sale.const1.CartConst;
import com.sunshine.mall.sale.const1.UserConst;
import com.sunshine.mall.sale.service.CartService;
import com.sunshine.mall.sale.util.MyCookieUtil;
import com.sunshine.mall.sale.util.MyJsonUtil;

@RequestMapping("/user")
@Controller
public class UserController {

	@Autowired
	private UserAuthService userAuthService;

	@Autowired
	private CartService cartService;

	private static final String CHARACTER_SET = "UTF-8";
	private static final String MESSAGE = "message";
	private static final String FAILED = "false";
	private static final String SUCCESS = "true";

	@ResponseBody
	@RequestMapping("/login")
	public Object login(T_User_Count user, HttpServletRequest request, HttpSession session,
			HttpServletResponse response) {
		T_User_Count login = null;
		Map<String, String> map = new HashMap<String, String>();
		try {
			login = userAuthService.login(user);
			map.put(MESSAGE, SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
			map.put(MESSAGE, FAILED);
		}
		if (login != null) {

			// 登陆成功 合并 cookie 购物车 到数据库 中
			Cookie[] cookies = request.getCookies();
			String cooKie = MyCookieUtil.getCooKie(cookies, CartConst.SHOPING_CART);
			
				try {
					List<T_cart> cookieCart =null;
					List<T_cart> newDbCart=null;
					//cookie  为空
					//    只查询 数据库 的购物车 即可
					if(StringUtils.isBlank(cooKie)) {
						newDbCart=cartService.get_cart_list_by_userId( login.getId());
					}else {
						//如果cookie 不为空
						String decode = URLDecoder.decode(cooKie, CHARACTER_SET);
						 cookieCart = MyJsonUtil.jsonToObjList(decode, T_cart.class);
						// 合并 cookie cart 和 数据库 中购物车 数据
							newDbCart = cartService.save_cookieCart(cookieCart, login.getId());
							// 重置 cookie
							Cookie cookie = new Cookie(CartConst.SHOPING_CART, "");
							cookie.setPath(request.getContextPath());
							cookie.setMaxAge(CartConst.COOKIE_MAX_AGE);
							response.addCookie(cookie);
					}
					// 更新session中购物车数据
					session.setAttribute(CartConst.SHOPING_CART, newDbCart);
					// 设置用户登陆状态 为已经登陆
					
					map.put(MESSAGE, SUCCESS);
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					// 出现异常 登陆失败
					map.put(MESSAGE, FAILED);
				}
		}
		session.setAttribute(UserConst.USER, login);
		return map;
	}

	@RequestMapping("/goto_login")
	public String goto_login() {
		return "/user/login";
	}

	@RequestMapping("/goto_regist")
	public String goto_regist() {
		return "/user/regist";
	}
}
