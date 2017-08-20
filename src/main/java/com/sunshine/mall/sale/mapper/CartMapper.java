package com.sunshine.mall.sale.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sunshine.mall.sale.bean.T_cart;

public interface CartMapper {

	void update_cart(@Param("updateList")List<T_cart> updateList,@Param("user_id")Integer user_id);

	void insert_cart(@Param("addList")List<T_cart> addList,@Param("user_id")Integer user_id);

	List<T_cart> select_cart_list_by_userId(Integer id);
    
}
