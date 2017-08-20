package com.sunshine.mall.auth.service;

import javax.jws.WebService;

import com.sunshine.mall.sale.bean.T_User_Count;


@WebService
public interface UserAuthService {

	String say(String str);
	
	T_User_Count login(T_User_Count user);
	
	Boolean regist(T_User_Count user);
}
