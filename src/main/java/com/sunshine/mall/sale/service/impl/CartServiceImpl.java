package com.sunshine.mall.sale.service.impl;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sunshine.mall.sale.bean.T_User_Count;
import com.sunshine.mall.sale.bean.T_cart;
import com.sunshine.mall.sale.const1.CartConst;
import com.sunshine.mall.sale.const1.UserConst;
import com.sunshine.mall.sale.mapper.CartMapper;
import com.sunshine.mall.sale.service.CartService;
import com.sunshine.mall.sale.util.MyCookieUtil;
import com.sunshine.mall.sale.util.MyJsonUtil;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartMapper cartMapper;
 	
	
	@Override
	public List<T_cart> get_cart_list_by_userId(Integer id) {
		// TODO Auto-generated method stub
		return cartMapper.select_cart_list_by_userId(id);
	}

	@Override
	public List<T_cart> save_cookieCart(List<T_cart> cookieCart, Integer user_id) {
		// TODO Auto-generated method stub
		//获取数据库购物车 数据
		List<T_cart> dbcart = get_cart_list_by_userId(user_id);
		//合并 cookie购物车  和 数据库 购物车
		if(dbcart == null || dbcart.size() == 0) {
			cartMapper.insert_cart(cookieCart,user_id);
		}else if(cookieCart != null){
			//合并到数据库
			mergerCart(cookieCart,dbcart,user_id);
		}
		
		return dbcart;
	}

	
	private void mergerCart(List<T_cart> cookieCart, List<T_cart> dbcart,Integer user_id) {
		
		Map<Integer,T_cart> map= new HashMap<Integer,T_cart>();
		//1遍历 dbcart
		
	//	List<T_cart> updateList = new ArrayList<T_cart>();
		//组合 数据库 中的 购物车信息 到 map 以 sku_id 为key T_cart 对象 为value
		List<T_cart> addList = new ArrayList<T_cart>();
		  for (T_cart t_cart : dbcart) {
			Integer sku_id = t_cart.getSku_id();
			map.put(sku_id, t_cart);
		}
		
		 for (T_cart t_cart : cookieCart) {
			
			Integer sku_id = t_cart.getSku_id();
			T_cart dbCartItem = map.get(sku_id);
			if(dbCartItem != null) {
				//如果 存在重复商品 更新 数量 
				dbCartItem.setNumber(dbCartItem.getNumber()+t_cart.getNumber());
				continue;
			}else {
				//如果不存在 重复商品 添加 到 addlist
				 t_cart.setUser_id(user_id);
			    addList.add(t_cart);
			}
		}
		 //更新 至数据库 
		 cartMapper.update_cart(dbcart,user_id);
		 dbcart.addAll(addList);
		 if(addList.size() >0) {
		 cartMapper.insert_cart(addList,user_id);
		 }
	}

	@Override
	public int save_cart(T_cart cart, Integer id) {
		// TODO Auto-generated method stub
		return cartMapper.insert_cart_item(cart, id);
	}

	@Override
	public void update_cart(T_cart cart) {
		// TODO Auto-generated method stub
		cartMapper.update_cart_item(cart);
	}

	@Override
	public boolean remove_cart_from_cartList(Integer sku_id, HttpSession session, HttpServletRequest request) {
		// TODO Auto-generated method stub
		
		Cookie[] cookies = request.getCookies();
		T_User_Count user = (T_User_Count)session.getAttribute(UserConst.USER);
		List<T_cart> cart_list=null;
		if(user == null) {
		String cooKie = MyCookieUtil.getCooKie(cookies, CartConst.SHOPING_CART);
		   try {
			   cart_list=MyJsonUtil.jsonToObjList(URLDecoder.decode(cooKie,"UTF-8"), T_cart.class);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			return false;
		}
		}else {
			 cart_list= (List<T_cart>)session.getAttribute(CartConst.SHOPING_CART);
			 cartMapper.delete_cartItem_by_sku_id_and_user_id(user.getId(),sku_id);
		}
		   
		   T_cart remove_cart_item = remove_cart_item(cart_list,sku_id);
		   return remove_cart_item==null?false:true;
	}

	private T_cart remove_cart_item(List<T_cart> cart_list, Integer sku_id) {
		if(cart_list == null || cart_list.size() == 0) {
			return null;
		}
		Iterator<T_cart> iterator = cart_list.iterator();
		while(iterator.hasNext()) {
			T_cart cart = iterator.next();
			if(cart.getSku_id()  == sku_id) {
				iterator.remove();
				return  cart;
			}
		}
		return null;
	}


}
