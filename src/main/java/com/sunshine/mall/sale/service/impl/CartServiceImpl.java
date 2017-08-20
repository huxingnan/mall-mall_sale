package com.sunshine.mall.sale.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sunshine.mall.sale.bean.T_cart;
import com.sunshine.mall.sale.mapper.CartMapper;
import com.sunshine.mall.sale.service.CartService;

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
		 cartMapper.insert_cart(addList,user_id);
		 
	}


}
