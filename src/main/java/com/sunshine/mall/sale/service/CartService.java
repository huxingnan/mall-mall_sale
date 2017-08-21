package com.sunshine.mall.sale.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.sunshine.mall.sale.bean.T_cart;

public interface CartService {


	List<T_cart> save_cookieCart(List<T_cart> cookieCart, Integer user_id);

	List<T_cart> get_cart_list_by_userId(Integer user_id);

	int save_cart(T_cart cart, Integer id);

	void update_cart(T_cart cart);

	boolean remove_cart_from_cartList(Integer sku_id, HttpSession session, HttpServletRequest request);

}
