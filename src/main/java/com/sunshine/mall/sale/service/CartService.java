package com.sunshine.mall.sale.service;

import java.util.List;

import com.sunshine.mall.sale.bean.T_cart;

public interface CartService {


	List<T_cart> save_cookieCart(List<T_cart> cookieCart, Integer user_id);

	List<T_cart> get_cart_list_by_userId(Integer user_id);

}
