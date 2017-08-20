package com.sunshine.mall.sale.const1;

public interface CartConst {
   /**
    * 购物车 shoping_cart,用作key 从cookie  和 session 中获取购物车数据 
    */
	public static final String SHOPING_CART="shopping_cart";
	/**
	    * 购物车 cookie有效时间7天
	    */
	public static final Integer COOKIE_MAX_AGE=60*60*24*7;
}
