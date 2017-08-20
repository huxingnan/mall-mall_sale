package com.sunshine.mall.sale.controller;

import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sunshine.mall.sale.bean.T_cart;
import com.sunshine.mall.sale.const1.CartConst;
import com.sunshine.mall.sale.const1.UserConst;
import com.sunshine.mall.sale.util.MyCookieUtil;
import com.sunshine.mall.sale.util.MyJsonUtil;

@RequestMapping("/cart")
@Controller
public class CartController {
   
	@RequestMapping("/mini_cart_inner")
	public String display_mini_cart(HttpServletRequest request,ModelMap map) {
		
		Cookie[] cookies = request.getCookies();
		
		String cartjson = MyCookieUtil.getCooKie(cookies, CartConst.SHOPING_CART);
		if(StringUtils.isBlank(cartjson)) {
			map.put("isNull", 1);
		}else {
			map.put("isNull", 0);
			try {
				cartjson=URLDecoder.decode(cartjson, "utf-8");
				List<T_cart> cart_list = MyJsonUtil.jsonToObjList(cartjson, T_cart.class);
				BigDecimal totalAmount =new BigDecimal("0");
				Integer totalNum=0;
				for (T_cart t_cart : cart_list) {
					totalAmount=totalAmount.add(t_cart.getAmount());
					totalNum+=t_cart.getNumber();
				}
				map.put("totalAmount", totalAmount);
				map.put("totalNum", totalNum);
				map.put(CartConst.SHOPING_CART, cart_list);
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		
		return "/cart/mini_cart_inner";
	}
	
	@ResponseBody
	@RequestMapping("/add_cart")
	public Object add_cart(T_cart cart,HttpServletRequest request,HttpServletResponse response,HttpSession session) {
		//更新购物车项 金额
		 updateCartAmount(cart);
		//获取登陆用户
		Object user = session.getAttribute(UserConst.USER);
		//创建空购物车
		List<T_cart> cart_list = new ArrayList<T_cart>();
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("success", true);
		if(user == null) {
			//用户未登录状态 用cookie 存放临时购物车
			Cookie[] cookies = request.getCookies();
			String cookieValue = MyCookieUtil.getCooKie(cookies,CartConst.SHOPING_CART);
			Cookie cookie=null;
			String cartJson=null;
			 if(StringUtils.isBlank(cookieValue)) {
				//cookie 没有购物车 
				  //1.创建一个的cookie
				 try {
					  cart_list.add(cart);
					  cartJson = MyJsonUtil.toJSon(cart_list);
					 //对购物车json进行URLEncoding 
					 cookie = new Cookie(CartConst.SHOPING_CART, URLEncoder.encode(cartJson,"UTF-8"));
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
					map.put("success", false);
				}
				 
			 } else {
				 //cookie中有购物车，对cookie 进行URLDenconding 解码操作
				 try {
				   cart_list = MyJsonUtil.jsonToObjList(URLDecoder.decode(cookieValue, "utf-8"), T_cart.class);
				   boolean newSku = isNewSku(cart_list,cart);
				   if(newSku) {
					   //cookie 中不存在相同的数据
					   cart_list.add(cart);
					   cartJson = MyJsonUtil.toJSon(cart_list);
				   }else {
					 //cookie 中存在相同的数据
					  updateCartItemNumber(cart_list,cart);
					  cartJson = MyJsonUtil.toJSon(cart_list);
				   }
				   cookie = new Cookie(CartConst.SHOPING_CART, URLEncoder.encode(cartJson,"UTF-8"));
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
					map.put("success", false);
				}
			 }
			 cookie.setPath(request.getContextPath());
			 cookie.setMaxAge(CartConst.COOKIE_MAX_AGE);
			 response.addCookie(cookie);
		}else {
			//用户登录 状态  购物车持久化 到 DB 并将 购物车存放在 session
			
		}
		
		return map;
	}

	/**
	 * 如果 购物车 存在改商品 则返回 fasle 否则 返回 true
	 * @param cart_list
	 * @param cart
	 * @return
	 */
	private boolean isNewSku(List<T_cart> cart_list, T_cart cart) {
		// TODO Auto-generated method stub
		Integer sku_id = cart.getSku_id();
		for (T_cart t_cart : cart_list) {
			if(t_cart.getSku_id() == sku_id) {
				return false;
			}
		}
		return true;
	}
	
	private void updateCartAmount(T_cart cart) {
		BigDecimal amount = cart.getSku_price().multiply(new BigDecimal(cart.getNumber()));
		cart.setAmount(amount);
	}
	
	private void updateCartItemNumber(List<T_cart> cart_list,T_cart cart){
		Integer sku_id = cart.getSku_id();
		for (T_cart t_cart : cart_list) {
			if(t_cart.getSku_id() == sku_id) {
				t_cart.setNumber(t_cart.getNumber()+cart.getNumber());
				updateCartAmount(t_cart);
				return;
			}
		}
	}
}
